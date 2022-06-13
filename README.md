# MLIR-DLModels

This is a repository of deep neural network models that are compiled with MLIR using dialects in different abstraction levels. Currently, the original models are from [IREE](https://github.com/google/iree) end-to-end test cases.
## Commit ID
The model MLIRs are lowered and verified using tools in MLIR, MHLO, and IREE project. Here are the commit IDs of the project repos that have been used.
- [IREE](https://github.com/google/iree): 794bbf4c23e790d9f897d7b6eebd0522e7c4af47
- [LLVM](https://github.com/llvm/llvm-project): 0fbe3f3f486e01448121f7931a4ca29fac1504ab
- [MHLO](https://github.com/tensorflow/mlir-hlo): e4d50a80ec92031c21a216e2855803cad1b7269a

## File Descriptions

### Directories
- **original-iree-model**: the same models in IREE's end to end tests.
- **mhlo-dialect-only**: replace IREE specific operations (Util) with arith dialect.
- **lowered-linalg-dialect**: the Linalg dialect verision that is lowered from MHLO. 
- **trueth-llvm-dialect**: the LLVM dialect verision that is lowered from Linalg.

### Files

- **IREE-swap.py**: swap IREE util.global, util.address, and util.load operations to arith constant operation.

- **makefile**: record the commands and flags to reproduce the lowering and verification processes.
