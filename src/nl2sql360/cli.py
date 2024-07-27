import os
import random
import subprocess
import sys
from enum import Enum, unique
from . import VERSION


USAGE = (
    "-" * 70
    + "\n"
    + "| Usage:                                                             |\n"
    + "|   nl2sql360-cli dataset -h: import NL2SQL dataset                  |\n"
    + "|   nl2sql360-cli evaluate -h: evaluate NL2SQL model                 |\n"
    + "|   nl2sql360-cli report -h: output evaluation report                |\n"
    + "|   nl2sql360-cli delete -h: delete dataset or evaluation history    |\n"
    + "|   nl2sql360-cli version: show version info                         |\n"
    + "-" * 70
)


WELCOME = (
    "-" * 58
    + "\n"
    + "| Welcome to NL2SQL360, version {}".format(VERSION)
    + " " * (25 - len(VERSION))
    + "|\n|"
    + " " * 56
    + "|\n"
    + "| Project page: https://github.com/HKUSTDial/NL2SQL360"
    + " " * 3
    + "|\n"
    + "-" * 58
)


@unique
class Command(str, Enum):
    DATASET = "dataset"
    EVALUATE = "evaluate"
    REPORT = "report"
    DELETE = "delete"
    VERSION = "version"
    HELP = "help"
    

def main():
    command = sys.argv.pop(1) if len(sys.argv) != 1 else Command.HELP
    if command == Command.DATASET:
        pass
    elif command == Command.EVALUATE:
        pass
    elif command == Command.REPORT:
        pass
    elif command == Command.DELETE:
        pass
    elif command == Command.VERSION:
        print(WELCOME)
    elif command == Command.HELP:
        print(USAGE)
    else:
        raise NotImplementedError("Unknown command: {}".format(command))
    