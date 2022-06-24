import re


class TensorVar:
    def __init__(self):
        self.typeName = ""
        self.valueName = ""
        self.index = 0
        self.value = ""
        self.shape = ""
        self.dataType = ""  # int or float
        self.io = ""  # input or output


class UndecidedVar:
    def __init__(self):
        self.valueName = ""
        self.value = {}


class CodeBlock:
    def __init__(self):
        self.function_name = ""
        self.variables = []
        self.undecidedVars = []
        self.nameToTypeVar = {}
        self.indexToVar = {}
        self.outputIndexToVar = {}
        self.nameToUndecidedVar = {}

    def updateValueShape(self, idx_, value_name_):
        self.indexToVar[idx_].valueName = value_name_
        self.indexToVar[idx_].value = self.nameToUndecidedVar[value_name_].value

    def updateOutputValueShape(self, idx_, value_name_):
        self.outputIndexToVar[idx_].valueName = value_name_
        self.outputIndexToVar[idx_].value = self.nameToUndecidedVar[value_name_].value

    def codeBlockPrint(self):
        for var in self.variables:
            print("typeName: " + var.typeName)
            print("valueName: " + var.valueName)
            print("index: " + str(var.index))
            print("value: " + var.value)
            print("shape: " + var.shape)
            print("dataType: " + var.dataType)
            print("io: " + var.io)


class Program:
    def __init__(self):
        self.program_name = ""
        self.blocks = []
        self.currentBID = 0


def matched_re(inx_, result_, program_):
    if inx_ == 0:  # test_f
        code_block = CodeBlock()
        code_block.function_name = result_.group(2)
        program_.blocks.append(code_block)
        program_.currentBID = program_.currentBID + 1
    if inx_ == 1:  # shape
        var = TensorVar()
        var.typeName = result_.group(1)
        var.dataType = result_.group(2)
        var.shape = result_.group(3)
        program_.blocks[program_.currentBID - 1].variables.append(var)
        program_.blocks[program_.currentBID - 1].nameToTypeVar[var.typeName] = var
    if inx_ == 2:  # make_program
        program_.program_name = result_.group(1)
        for idx, name_mk in enumerate(result_.group(2).split(", ")):
            program_.blocks[program_.currentBID - 1].nameToTypeVar[name_mk].index = idx
            program_.blocks[program_.currentBID - 1].nameToTypeVar[name_mk].io = "input"
            program_.blocks[program_.currentBID - 1].indexToVar[idx] = \
                program_.blocks[program_.currentBID - 1].nameToTypeVar[name_mk]

        # output
        var = TensorVar()  # index, shape, type, IO
        var.index = 0
        var.io = "output"
        var.shape = result_.group(3)
        program_.blocks[program_.currentBID - 1].variables.append(var)
        program_.blocks[program_.currentBID - 1].outputIndexToVar[0] = var
    if inx_ == 3:  # value
        var = UndecidedVar()
        var.valueName = result_.group(1)
        var.value = result_.group(2)
        program_.blocks[program_.currentBID - 1].undecidedVars.append(var)
        program_.blocks[program_.currentBID - 1].nameToUndecidedVar[var.valueName] = var
    if inx_ == 4:  # check_exact4
        for idx, value_name in enumerate(result_.group(1).split(", ")):
            program_.blocks[program_.currentBID - 1].updateValueShape(idx, value_name)
        for idx, value_name in enumerate(result_.group(2).split(", ")):
            program_.blocks[program_.currentBID - 1].updateOutputValueShape(idx, value_name)


test_f_re = re.compile(r'TEST_F\((.*), (.*)\)')
shape_re = re.compile(r' +auto (.*) = Placeholder\(DType::(.*), {(.*)}\)')
make_program_re = re.compile(r'makeProgram\("(.*)", {(.*)}, {(.*)}\)')
value_re = re.compile(r'std::vector<.*> (.*){(.*)}')
check_exact_re = re.compile(r'checkExact\(program, {(.*)}, {(.*)}\)')

expressions = [test_f_re, shape_re, make_program_re, value_re, check_exact_re]

file = open("gemm.cc", "r")
program = Program()

for line in file:
    for inx, exp in enumerate(expressions):
        result = exp.search(line)
        if result is not None:
            matched_re(inx, result, program)

for block in program.blocks:
    block.codeBlockPrint()
