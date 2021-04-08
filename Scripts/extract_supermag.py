import pandas as pd
import datetime as dt

def extract_data(filename,filenameout,str_start_time,str_end_time):

    """
    """

    start_time=dt.datetime.strptime(str_start_time,"%Y-%m-%dT%H:%M:%S")
    end_time  =dt.datetime.strptime(str_end_time,  "%Y-%m-%dT%H:%M:%S")

    data_all = pd.read_csv(filename, parse_dates=[0])

    index = (data_all['Date_UTC'] > start_time) & \
        (data_all['Date_UTC'] < end_time)

    data_selected = data_all[index]

    if data_selected.size > 0:
        data_selected.to_csv(filenameout,index=False,date_format="%Y-%m-%dT%H:%M:%S")

