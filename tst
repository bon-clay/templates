#! /usr/bin/python3

import os
from sys import argv


project_path = "/home/user/projects/templates/"
python_test_file_name = "test.py"
vim_test_file_name = "test.vim"


def create_base_template():
    with open(python_test_file_name, 'w') as f:
        f.write('')
    os.system(f"nvim {python_test_file_name}")


def create_pygame_template():
    os.system(f"cp {project_path}/templates/pygame_template.py {project_path}/testing/{python_test_file_name}")
    os.system(f"nvim {python_test_file_name}")


def create_vim_template():
    os.system(f"cp {project_path}/templates/pygame_template.py {project_path}/testing/{vim_test_file_name}")
    os.system("nvim {vim_test_file_name}")


os.chdir(project_path + "testing/")

if len(argv) == 1:
    create_base_template()
else:
    arg = argv[1]
    if arg in ['-p', "--pygame"]:
        create_pygame_template()
    elif arg in ['-v', "--vim"]:
        create_vim_template()
    elif arg in ['-c', "--config"]:
        os.system(f"nvim {project_path}/tst")
    else:
        print("Unknow argument")


