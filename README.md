# python-based MLIR test case generation tool

This is a tool for generation MLIR test cases
## Function
- Inputs: a directory of MLIR function files, a json file specifies the inputs and outputs to these functions 
- Outputs: a directory of these functions that are added the main function with inputs, and Filecheck flags for verification. The verification scripts are also provided 


## File Descriptions

### Directories
- **src**: the Source Files of the tool
- **test**: The generated MLIR test cases 
### Source Files

- **IREE-swap.py**: swaps IREE util.global, util.address, and util.load operations to arith constant operation.

- **makefile**: records the commands and flags to reproduce the lowering and verification processes. 

### How to Run it