#! /usr/bin/python3

import os
from sys import argv

project_path = "/home/user/projects/templates/"
test_file_name = "test.py"

def create_base_template():
    with open(test_file_name, 'w') as f:
        f.write('')
    os.system("nvim test.py")


def create_pygame_template():
    os.system(f"cp {project_path}/templates/pygame_template.py {project_path}/testing/{test_file_name}")
    os.system("nvim test.py")


os.chdir(project_path + "testing/")

if len(argv) == 1:
    create_base_template()
else:
    if argv[1] in ['p', "pygame"]:
        create_pygame_template()
    else:
        print("Unknow argument")





