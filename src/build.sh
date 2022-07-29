/data/lchang1/cmake/bin/cmake /home/nbpatel/mlir-extensions -GNinja .. -DCMAKE_BUILD_TYPE=Debug -DLLVM_DIR=/data/lchang1/mlir-llvm/lib/cmake/llvm -DMLIR_DIR=/data/lchang1/mlir-llvm/lib/cmake/mlir -DCMAKE_INSTALL_PREFIX=/data/lchang1/mlir-extensions/build -DLEVEL_ZERO_DIR=/usr -DIMEX_ENABLE_IGPU_DIALECT=ON -DCMAKE_EXPORT_COMPILE_COMMANDS=ON

/data/lchang1/mlir-extensions/build/level_zero_runner/level_zero_runner /data/lchang1/mlir-extensions/test/Conversion/LowerToLevelZero/addf.mlir --entry-point-result=void --shared-libs=/data/lchang1/mlir-llvm/lib/libmlir_runner_utils.so,/data/lchang1/mlir-extensions/build/dpcomp_gpu_runtime/libdpcomp-gpu-runtime.so,/data/lchang1/mlir-extensions/build/dpcomp_runtime/libdpcomp-runtime.so



/data/lchang1/mlir-llvm/bin/mlir-opt /data/lchang1/MLIR-DLModels/test/mobilenetv3-linalg.mlir -convert-tensor-to-linalg -o test.mlir


/data/lchang1/mlir-llvm/bin/mlir-opt /data/lchang1/MLIR-DLModels/test/resnet-50-linalg-without-tensor-pad.mlir -reconcile-unrealized-casts --arith-expand   -o test.mlir



/data/lchang1/mlir-llvm/bin/mlir-opt /data/lchang1/MLIR-DLModels/test/OpTest.ExplicitPadding.mlir -reconcile-unrealized-casts -o test.mlir



/data/lchang1/mlir-extensions/build/mlir/tools/level_zero_runner/level_zero_runner /data/lchang1/MLIR-DLModels/test/resnet-50-linalg-without-tensor-pad.mlir --entry-point-result=void --shared-libs=/data/lchang1/mlir-llvm/lib/libmlir_runner_utils.so,/data/lchang1/mlir-extensions/build/dpcomp_gpu_runtime/libdpcomp-gpu-runtime.so,/data/lchang1/mlir-extensions/build/dpcomp_runtime/libdpcomp-runtime.so

/data/lchang1/mlir-llvm/bin/mlir-opt rampup.mlir -convert-tensor-to-linalg -linalg-bufferize -arith-bufferize  -tensor-bufferize -func-bufferize -buffer-deallocation -convert-linalg-to-loops -convert-scf-to-cf  -convert-linalg-to-llvm -lower-affine -convert-scf-to-cf --convert-memref-to-llvm -convert-func-to-llvm -reconcile-unrealized-casts --arith-expand --convert-arith-to-llvm --convert-math-to-llvm -finalizing-bufferize | /data/lchang1/mlir-llvm/bin/mlir-cpu-runner --entry-point-result=void -shared-libs=/data/lchang1/mlir-llvm/lib/libmlir_c_runner_utils.so,/data/lchang1/mlir-llvm/lib/libmlir_runner_utils.so



/data/lchang1/mlir-llvm/bin/mlir-opt test.mlir -convert-tensor-to-linalg -linalg-bufferize -arith-bufferize  -tensor-bufferize -func-bufferize -buffer-deallocation -convert-linalg-to-loops -convert-scf-to-cf  -convert-linalg-to-llvm -lower-affine -convert-scf-to-cf --convert-memref-to-llvm -convert-func-to-llvm -reconcile-unrealized-casts --convert-arith-to-llvm --convert-math-to-llvm -finalizing-bufferize




/data/lchang1/mlir-llvm/bin/mlir-opt /data/lchang1/MLIR-DLModels/test/CppEdsl.Add.mlir -convert-tensor-to-linalg -linalg-bufferize -arith-bufferize  -tensor-bufferize -func-bufferize -buffer-deallocation -convert-linalg-to-loops -convert-scf-to-cf  -convert-linalg-to-llvm -lower-affine -convert-scf-to-cf --convert-memref-to-llvm -convert-func-to-llvm -reconcile-unrealized-casts --arith-expand --convert-arith-to-llvm --convert-math-to-llvm -finalizing-bufferize | /data/lchang1/mlir-llvm/bin/mlir-cpu-runner --entry-point-result=void -shared-libs=/data/lchang1/mlir-llvm/lib/libmlir_c_runner_utils.so,/data/lchang1/mlir-llvm/lib/libmlir_runner_utils.so
/data/lchang1/mlir-llvm/bin/mlir-opt /data/lchang1/MLIR-DLModels/test/CppEdsl.Add.mlir -convert-tensor-to-linalg -linalg-bufferize -arith-bufferize  -tensor-bufferize -func-bufferize -buffer-deallocation -convert-linalg-to-loops -convert-scf-to-cf  -convert-linalg-to-llvm -lower-affine -convert-scf-to-cf --convert-memref-to-llvm -convert-func-to-llvm -reconcile-unrealized-casts --arith-expand --convert-arith-to-llvm --convert-math-to-llvm -finalizing-bufferize | /data/lchang1/mlir-llvm/bin/mlir-cpu-runner --entry-point-result=void -shared-libs=/data/lchang1/mlir-llvm/lib/libmlir_c_runner_utils.so,/data/lchang1/mlir-llvm/lib/libmlir_runner_utils.so | /data/lchang1/mlir-llvm/bin/FileCheck /data/lchang1/MLIR-DLModels/test/CppEdsl.Add.mlir
