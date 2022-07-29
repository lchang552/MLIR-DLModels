from os import system
import json
from os import listdir

        
json_path = "/nfs/site/home/lchang1/pytool/MLIR-DLModels/src/data.json"
mlir_input_dir = "/nfs/site/home/lchang1/pytool/MLIR-DLModels/test/without-main/"
mlir_output_dir = "/nfs/site/home/lchang1/pytool/MLIR-DLModels/added-main/"

json_file = open(json_path)
json_file = json.load(json_file)
for i in json_file:
    if i+".mlir" in listdir(mlir_input_dir):
        mlir_input = mlir_input_dir + i+".mlir"
        mlir_output = mlir_output_dir + i+".mlir"
        cmd = "python mlir-file-modify.py " + mlir_input + " " + json_path + " " + \
            mlir_output + " " + i  
        print(cmd)
        t = system(cmd)
        

    
