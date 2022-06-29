from http.client import ImproperConnectionState
from os import listdir
from os.path import isfile, join
import sys
from os import system
import json

cc_dir_path = sys.argv[1]
json_dir_path = sys.argv[2]


# generating json files
cc_files = [f for f in listdir(cc_dir_path) if isfile(join(cc_dir_path, f))]
for cc in cc_files:
    prefix = cc.split(".")[0]
    cmd = "python json-data-gen.py "+cc_dir_path+cc+" "+json_dir_path+prefix+".json"
    t = system(cmd)
    json_path  = json_dir_path+prefix+".json"
    json_file = open(json_path)
    json_file = json.load(json_file)
    for function_name in json_file:
        cmd = "python mlir-file-modify.py ./test-case/ExampleCppEdsl."+ function_name +".mlir "+json_path+" ./added-main/ExampleCppEdsl."+ function_name +".mlir "+ function_name
        print(cmd)
        t = system(cmd)
        





    
