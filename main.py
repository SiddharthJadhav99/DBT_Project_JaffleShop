import json
import logging
import multiprocessing 
import os
import re
import sys
import time
from datetime import datetime

import numpy as np
import pandas as pd

# os.system("bq load --autodetect  dbt_fundamentals.orders gs://training_freshers/SiddharthJadhav/orders.csv")
# os.system("bq load --autodetect  dbt_fundamentals.customers gs://training_freshers/SiddharthJadhav/users.csv")
# os.system("bq load --autodetect  dbt_fundamentals.payments gs://training_freshers/SiddharthJadhav/payments.csv")
os.system("pushd D:\DBT_Fundamentals\dbt_project & dbt run --full-refresh")