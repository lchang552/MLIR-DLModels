from http.client import ImproperConnectionState
from os import listdir
from os.path import isfile, join
import sys
from os import system
import json

test_dir = "/home/lchang1/testCase/MLIR-DLModels/test/"

mlir_opt = "/home/lchang1/llvm/mlir-llvm/bin/mlir-opt"
other_flags = "-convert-tensor-to-linalg -linalg-bufferize -arith-bufferize  -tensor-bufferize -func-bufferize -buffer-deallocation -convert-linalg-to-loops -convert-scf-to-cf  -convert-linalg-to-llvm -lower-affine -convert-scf-to-cf --convert-memref-to-llvm -convert-func-to-llvm -reconcile-unrealized-casts --arith-expand --convert-arith-to-llvm --convert-math-to-llvm -finalizing-bufferize | /home/lchang1/llvm/mlir-llvm/bin/mlir-cpu-runner --entry-point-result=void -shared-libs=/home/lchang1/llvm/mlir-llvm/lib/libmlir_c_runner_utils.so,/home/lchang1/llvm/mlir-llvm/lib/libmlir_runner_utils.so"

test_files = [f for f in listdir(test_dir) if isfile(join(test_dir, f))]
for test in test_files:
    cmd = mlir_opt+" " +test_dir+test+" "+ other_flags
    print(cmd)
    t = system(cmd)

    
