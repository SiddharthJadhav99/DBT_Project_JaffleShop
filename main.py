import os
import argparse


with open("D:\\DBT_Fundamentals\\dbt_project\\data.csv") as file:

    for element in file:
        dest, format, sourc = element.split(',')
        cmnd = f"bq load --autodetect --replace --source_format={format} {dest} {sourc} "
        print(cmnd)
        os.system(cmnd)

parser = argparse.ArgumentParser(
    description="DBT Fundamentals Project"
)

parser.add_argument(
    "--dbtpath", type=str, help="Path of dbt Project"
)

args = parser.parse_args()

os.system(f"pushd {args.dbtpath} & dbt run --full-refresh")
