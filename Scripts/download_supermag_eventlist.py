#!/usr/bin/env python3

import sys
import array
import subprocess
import argparse
import re
import os
import shutil
import pandas as pd
import extract_supermag

if __name__ == '__main__':
    
    PROG_DESCRIPTION = ('Script to download super mag data from a file.')
    ARG_PARSER = argparse.ArgumentParser(description=PROG_DESCRIPTION)
    ARG_PARSER.add_argument('-f', '--filename',
                            help='(default:event_list.txt)',
                            type=str, default='event_list.txt')
    ARGS = ARG_PARSER.parse_args()

    with open(ARGS.filename, 'rt') as events:
        lines = list(events)

    for iLine, line in enumerate(lines):
        if re.match(r'Selected Events',line):
            iSelectedID=iLine
        if re.match('#START',line[0:6]):
            iParamStart=iLine+2
            break

    # find the location of =
    iChar  = lines[iSelectedID].find('=')

    # any character after = is considered to be the string containing
    # run IDs.
    StrRunIDs = lines[iSelectedID][iChar+1:]

    # split the string
    List_StrRunIDs = StrRunIDs.split(',')

    RunIDs = []

    # loop through List_StrRunIDs to get the list of run IDs in an integer list
    for StrRunID in List_StrRunIDs:
        try:
            # try to convert it to an integer
            RunID = int(StrRunID)
            RunIDs.append(RunID)
        except:
            # cannot convert to an integer as there is '-'
            ListTmp = StrRunID.split('-')
            try:
                RunIDs.extend([x for x in range(int(ListTmp[0]),
                                                int(ListTmp[1])+1)])
            except Exception as error:
                raise TypeError(error," wrong format: could only contain "
                                + "integer, ',' and '-'.")

    print("Selected Events =", RunIDs)

    params_I =[]

    for iLine, line in enumerate(lines[iParamStart:]):
        if line.strip():
            params    = line.split()

            # the first element is always an inter representing the run ID.
            params[0] = int(params[0])

            # if the run ID (event ID) is in the selection.
            if params[0] in RunIDs:
                RunID      = params[0]
                start_time = params[1]
                end_time   = params[2]

                EventDir=os.getcwd()+'/Events/Event'+str(RunID).zfill(2)+'/deltaB'

                # create the Events dir if needed
                if not os.path.isdir(os.getcwd()+'/Events'):
                    os.mkdir(os.getcwd()+'/Events')
                    print("Created dir:", os.getcwd()+'/Events')

                # create the Events/Event* dir if needed
                if not os.path.isdir(os.getcwd()+'/Events/Event'+str(RunID).zfill(2)):
                    os.mkdir(os.getcwd()+'/Events/Event'+str(RunID).zfill(2))
                    print('Created dir:', os.getcwd()+'/Events/Event'+str(RunID).zfill(2))

                # create the Events/Event**/deltaB dir if needed
                if not os.path.isdir(EventDir):
                    os.mkdir(EventDir)
                    print("Created dir:", EventDir)

                stations=pd.read_csv('stations.csv')

                str_stations = ''

                for index,value in stations.iterrows():
                    station  = value['IAGA']
                    str_stations = str_stations + '\'' +  str(station) + '\','

                    ##  extract supermag data if the dir supermag_data exists
                    # filenameIn = os.getcwd()+ '/supermag_data/' + start_time[0:4] + '/' + station \
                    #     + '.csv'
                    # filenameOut = EventDir + '/deltaB/' + station + '.csv'
                    # 
                    # if os.path.isfile(filenameIn):
                    #     if not os.path.isfile(filenameOut):
                    #         print('extracting data for Station:', station)
                    #         extract_supermag.extract_data(filenameIn,filenameOut,
                    #                                       start_time,end_time)
                    # else:
                    #     print(station + ' is missing.')

                FileId=open('runidl1','w')
                FileId.write(';\n;\n')
                FileId.write('.r Idl/supermag-api Idl/download_supermag\n')
                FileId.write('download_supermag,\''+start_time + '\',\'' +end_time + '\','
                             +'str_stations=['+str_stations[:-1]+'],dir_out=\''
                             +EventDir +'\n')
                FileId.write('exit\n')
                FileId.close()
                    
                subprocess.call(["idl", "runidl1"])

                os.remove("runidl1")
