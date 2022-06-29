mkdirs:
	mkdir added-main
	mkdir gtest-files
	mkdir json-files
	mkdir test-case
get-list:
	/home/lchang1/plaidml/plaidml/build-x86_64/Release/bin/plaidml_edsl_tests_cc_test --gtest_list_tests > list.txt
get-mlir-cases:
	export PLAIDML_DUMP=/home/lchang1/plaidml/plaidml/dump/
	python extract-mlir-os.py
INPUT = GEMVC_INT64

cpu:
	/home/lchang1/llvm/mlir-llvm/bin/mlir-opt ./added-main/ExampleCppEdsl.$(INPUT).mlir -convert-tensor-to-linalg -linalg-bufferize -arith-bufferize  -tensor-bufferize -func-bufferize -buffer-deallocation -convert-linalg-to-loops -convert-scf-to-cf  -convert-linalg-to-llvm -lower-affine -convert-scf-to-cf --convert-memref-to-llvm -convert-func-to-llvm -reconcile-unrealized-casts --arith-expand --convert-arith-to-llvm --convert-math-to-llvm -finalizing-bufferize | /home/lchang1/llvm/mlir-llvm/bin/mlir-cpu-runner --entry-point-result=void -shared-libs=/home/lchang1/llvm/mlir-llvm/lib/libmlir_c_runner_utils.so,/home/lchang1/llvm/mlir-llvm/lib/libmlir_runner_utils.so

json-gen:
#arg: cc, output: json
	python json-data-gen.py ./gtest-files/gemm.cc ./json-files/gemm.json
automate:
#arg: cc dir, output: json dir 
	python automate.py ./gtest-files/ ./json-files/
mlir-addmain:
#arg: mlir, json, output, function name  
	python mlir-file-modify.py ./test-case/ExampleCppEdsl.$(INPUT).mlir ./json-files/gemv.json ./added-main/ExampleCppEdsl.$(INPUT).mlir $(INPUT)