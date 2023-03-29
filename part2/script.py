import re
import datetime
import csv
from os import getcwd
from os import listdir
from os.path import isfile, join


def check(files_list):
    if type(files_list) != list:
        return 1
    if len(files_list) < 2:
        return 1
    for file in files_list:
        if type(file) != str:
            return 1
    return 0


def script(files_list):
    if check(files_list):
        raise Exception

    with open("report.csv", "w") as report:
        csv_report = csv.writer(report, delimiter=';')

        csv_report.writerow(["company", "metric_id", "metric_desc", "metric_value", "metric_date", "generation_date"])

        for file_string in files_list:
            f = open(file_string, "r")
            csv_list = list(csv.reader(f, delimiter=';'))

            for row in csv_list[1:]:
                row.append(str(datetime.date.today()))
                csv_report.writerow(row)
            f.close()
    report.close()


if __name__ == "__main__":
    cwd = getcwd()
    files_list = [
        f for f in listdir(cwd) if (isfile(join(cwd, f)) and re.fullmatch("^data_[0-9]{4}-[0-9]{2}-[0-9]{2}\.csv$", f))
    ]
    files_list.sort()
    script(files_list)
