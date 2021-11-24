#! /usr/bin/python3

import argparse
import os

parser = argparse.ArgumentParser(description="Fast testing templates")

args = parser.parse_args()

if not args._get_args():
    os.chdir("/home/user/projects/templates/testing/")
    with open("test.py", 'w') as f:
        f.write('')
    os.system("nvim test.py")


