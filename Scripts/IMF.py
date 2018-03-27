#!/usr/bin/env python
from datetime import datetime, date, time, timedelta
import os
import math
Error = '99999.'
Error1 = '999.99'
iFileRead = open('OMNI.txt','r')
iFileWrite = open('IMF.dat','w')
Lines = iFileRead.readlines()
for line in Lines:
    if '#' in line:
        pass
    elif 'EPOCH_TIME' in line:
        iFileWrite.write(
            "OMNI data for the solar wind on the bow shock\n")
        SplitLine = line.split()
        for l in range(0,len(SplitLine)):
            String = SplitLine[l]
            if 'BX,_GSE' in String:
                iBx = l+1
            elif 'BY,_GSM' in String:
                iBy = l+1
            elif 'BZ,_GSM' in String:
                iBz = l+1
            elif 'VX_VELOCITY,_GSE' in String:
                iUx = l+1
            elif 'PROTON_DENSITY' in String:
                iRho = l+1
            elif 'TEMPERATURE' in String:
                iT = l+1
        iFileWrite.write(
            "yr mo dy hr mn sc ms bx by bz ux uy uz rho T\n#START\n")
    elif 'dd-mm-yyyy' in line:
        pass
    else:
        SplitLine = line.split()
        DateTime = datetime.strptime(
            line[0:line.index('.')],'%d-%m-%Y %H:%M:%S')
        StringWrite =  DateTime.strftime(
            "%Y  %m  %d  %H  %M  %S")+'  '+line[line.index(
            '.')+1:line.index('.')+4]
        StringWrite = StringWrite +'  '+SplitLine[iBx
                      ]+'  '+SplitLine[iBy]+'  '+SplitLine[iBz]
        StringWrite = StringWrite +'  '+SplitLine[iUx]+'  0.0  0.0'
        StringWrite = StringWrite +'  '+SplitLine[
            iRho]+'  '+SplitLine[iT]
        if Error in StringWrite:
            pass
        elif Error1 in StringWrite:
            pass
        else:
            iFileWrite.write(StringWrite+"\n")
        
iFileRead.close()
iFileWrite.close()
