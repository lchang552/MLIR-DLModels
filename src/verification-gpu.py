from http.client import ImproperConnectionState
from os import listdir
from os.path import isfile, join
import sys
from os import system
import json

test_dir = "/data/lchang1/MLIR-DLModels/test/"

level_zero_runner = "/data/lchang1/mlir-extensions/build/level_zero_runner/level_zero_runner"
other_flags = "--entry-point-result=void --shared-libs=/data/lchang1/mlir-llvm/lib/libmlir_runner_utils.so,/data/lchang1/mlir-extensions/build/dpcomp_gpu_runtime/libdpcomp-gpu-runtime.so,/data/lchang1/mlir-extensions/build/dpcomp_runtime/libdpcomp-runtime.so"

test_files = [f for f in listdir(test_dir) if isfile(join(test_dir, f))]
for test in test_files:
    cmd = level_zero_runner+" " +test_dir+test+" "+ other_flags
    print(cmd)
    t = system(cmd)

    
