from http.client import ImproperConnectionState
from os import listdir
from os.path import isfile, join
import sys
from os import system
import json

test_dir = "/nfs/site/home/lchang1/pytool/MLIR-DLModels/added-main/"
mlir_build_dir = "/nfs/site/home/lchang1/llvm/llvm-project/build/"


mlir_opt = mlir_build_dir+"bin/mlir-opt"
mlir_cpu_runner = mlir_build_dir+"bin/mlir-cpu-runner"
FileCheck = mlir_build_dir+"bin/FileCheck"
runner_shared_libs = mlir_build_dir+"lib/libmlir_c_runner_utils.so"+","+ mlir_build_dir+"lib/libmlir_runner_utils.so"

other_flags = "-convert-tensor-to-linalg -linalg-bufferize -arith-bufferize  -tensor-bufferize -func-bufferize -buffer-deallocation -convert-linalg-to-loops -convert-scf-to-cf  -convert-linalg-to-llvm -lower-affine -convert-scf-to-cf --convert-memref-to-llvm -convert-func-to-llvm -reconcile-unrealized-casts --arith-expand --convert-arith-to-llvm --convert-math-to-llvm -finalizing-bufferize | "+mlir_cpu_runner+" --entry-point-result=void -shared-libs="+runner_shared_libs +" | "+ FileCheck +" "

test_files = [f for f in listdir(test_dir) if isfile(join(test_dir, f))]
for test in test_files:
    cmd = mlir_opt+" " +test_dir+test+" "+ other_flags+test_dir+test
    print(cmd)
    t = system(cmd)
    print(t)

    
