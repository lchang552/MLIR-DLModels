# Python-based MLIR test case generation tool

This is a tool for generation MLIR test cases
## The function of this tool
- Inputs: a directory of MLIR function files, a json file specifies the inputs and outputs to these functions 
- Outputs: a directory of these functions that are added the main function with inputs, and Filecheck flags for verification. The verification scripts are also provided 

## Directories
- **src**: the Source Files of the tool
- **test**: The generated MLIR test cases 
## Source Files

- useful source files for the tool
    - **config.txt**: config the paths that will be used by this tool
    - **data.json**: a json file specifies the inputs and ouputs of the mlir functions
    - **automate.py**: the script to automatically generate result milr files in a folder
    - **mlir-file-modify.py**: the main script to add input variable, main function, and FileCheck flags
    - **parser.py**: the script to parse config.txt
    - **verification-cpu.py**: the script for validating the output mlir file on CPU
    - **verification-gpu.py**: the script for validating the output mlir file on GPU

- recording the scripts for dealing the PlaidML test cases
    - **extract-mlir-plaidML.py**: record the script to extract plaidML test cases
    - **LastTest.log**: record the input and output trace of plaidML gtest log
    - **test-env.cc**: record the changes to plaidML to print input and output logs

- sampe script to generate data.json from input and output data log trace like in **LastTest.log** 
    - **json-data-gen.py**: a sample script to generate data.json from plaidML c++ source file
    - **json-gen-from-gtest-log.py**: a sample script to generate data.json from plaidML plaidML gtest log file

- recording the scripts for dealing the IREE test cases
    - **IREE-swap.py**: record the script to swap IREE util.global, util.address, and util.load operations to arith constant operation.
    - **makefile**: records the commands and flags to reproduce the lowering and verification processes. 

## How to Run it

- before you run
    - change the file path in config.txt according to your environment
- test case generation

```
python automate.py
```

- verification

```
python verification-cpu.py
python verification-gpu.py
```