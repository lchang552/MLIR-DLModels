import re

test_function = ""

def storeIO(interested_lines_, input_list_, output_):
    for line in interested_lines_:
        # std::vector<int64_t> data_A{1, 1, 1, 1, 1, 2, 3, 3, 3};
        IO_pattern = re.compile(r'std::vector<.*> (.*){(.*)}')
        match_result = IO_pattern.search(line)
        if match_result is not None:
            if match_result.group(1) in input_list_:
                print("function_name:"+ test_function + ", input: "+ match_result.group(1)+ ", value:"+match_result.group(2))

            if match_result.group(1) == output_:
                print("function_name:"+ test_function + ", output: "+ match_result.group(1)+ ", value:"+match_result.group(2))




file = open("gemm.cc", "r")

# current pattern
# 1.store every line between TEST_F-> checkExact ------> 94 cases
# 2.figure out the input and output from checkExact(program, {intput}, {output});

found_test_f = False
interested_lines = []
for line in file:
    # find the test_f line
    if not found_test_f:
        test_f = re.compile(r'TEST_F\((.*), (.*)\)')
        match_result = test_f.search(line)
        if match_result is not None:
            found_test_f = True
            test_function = match_result.group(2)
            # maybe need to save the names in test_f further
    else: # find the CheckExact line
        #   checkExact(program, {data_A, data_B, data_C}, {data_O});
        check_exact = re.compile(r'checkExact\(program, {(.*)}, {(.*)}\)')
        check_exact_result = check_exact.search(line)
        if check_exact_result is not None:  # clear the lines, print out the IO

            input_list = check_exact_result.group(1).split(", ")
            output = check_exact_result.group(2)
            storeIO(interested_lines, input_list, output)
            interested_lines = []
            test_function = ""
            found_test_f = False
        else:  # store the lines
            interested_lines.append(line)


