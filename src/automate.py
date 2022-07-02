from os import system
import json


        
json_path = "/home/lchang1/testCase/MLIR-DLModels/src/data.json"
json_file = open(json_path)
json_file = json.load(json_file)
mlir_input_dir = "/home/lchang1/testCase/MLIR-DLModels/test/without-main/"
mlir_output_dir = "/home/lchang1/testCase/MLIR-DLModels/added-main/"
for i in json_file:
    mlir_input = mlir_input_dir + i+".mlir"
    mlir_output = mlir_output_dir + i+".mlir"
    cmd = "python mlir-file-modify.py " + mlir_input + " " + json_path + " " + \
        mlir_output + " " + i  
    print(cmd)
    t = system(cmd)

    
