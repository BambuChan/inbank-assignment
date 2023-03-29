import re
from os import getcwd
from os import listdir
from os.path import isfile, join


def script(files_list):
    print(files_list)


if __name__ == "__main__":
    cwd = getcwd()
    files_list = [
        f for f in listdir(cwd) if (isfile(join(cwd, f)) and re.fullmatch("^data_[0-9]{4}-[0-9]{2}-[0-9]{2}\.csv$", f))
    ]

    script(files_list)
