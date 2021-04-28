#!/usr/bin/env python3

import sys
import array
import subprocess
import argparse
import re
import get_data
import os
import shutil
import pandas as pd
import extract_supermag

if __name__ == '__main__':
    
    PROG_DESCRIPTION = ('Script to submit jobs selected from a file.')
    ARG_PARSER = argparse.ArgumentParser(description=PROG_DESCRIPTION)
    ARG_PARSER.add_argument('-f', '--filename',
                            help='(default:event_list.txt)',
                            type=str, default='event_list.txt')
    ARG_PARSER.add_argument('-c', '--DoCompile',
                            help='(default: 1)'
                            + 'Use if you want to re-install and compile '
                            + 'the code.',
                            type=int, default=1)
    ARG_PARSER.add_argument('-m', '--DoUseMarker',
                            help='(default: 1)'
                            + 'Use if you want to use the marker ^ for'
                            + 'changing the PARAM.in file.',
                            type=int, default=1)
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

                EventDir=os.getcwd()+'/Events/'+'event'+str(RunID).zfill(2)
                str_time_filename = start_time[0:10].replace('-','_')

                # create the Events dir if needed
                if not os.path.isdir(os.getcwd()+'/Events'):
                    os.mkdir(os.getcwd()+'/Events')
                    print("Created dir:", os.getcwd()+'/Events')

                # create the Events/event** dir if needed
                if not os.path.isdir(EventDir):
                    os.mkdir(EventDir)
                    print("Created dir:", EventDir)

                DoSaveFile = (not os.path.isfile(EventDir+'/IMF.dat') or
                              not os.path.isfile(EventDir+'/event_'+str(RunID).zfill(2)+'.txt'))

                # download the data if needed
                if DoSaveFile:
                    print("Either the IMF.dat or dst file is missing. Download the files")
                    get_data.download_omni(str_start_time=start_time,
                                           str_end_time  =end_time, 
                                           DoSaveFile=DoSaveFile, 
                                           str_time_filename=str_time_filename,
                                           out_dir=EventDir, RunID=RunID)
                else:
                    print("Both IMF.dat and dst files exist for Event "+ str(RunID))
