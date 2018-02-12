#!/usr/bin/env python
from datetime import datetime, date, time, timedelta
import os
import urllib2
'''
IAGA codes of Russian and Ukrainian stations
'''
AllRus='AIA ARS BOX KLI CPS IRT KHB KIV KZN LVV MGD MOS NVS ODE PET POD SPB YAK'
RusRealTime ='ARS KLI MOS'     #Stations which provide data in real time
'''
Same for American stations incuding Alaska, Guam, Honolulu, Puerto Rico
''' 
AllAme='BOU BRW BSL CMO DED FRD FRN GUA HON NEW SHU SIT SJG TUC'
def download(NameRus,NameAme,DateTimeStart,DateTimeEnd):
    '''
    -start download magnetometer files remove older one
    '''
    os.system("rm -f *.txt")
    TimeEnd       = time(
        DateTimeEnd.hour,DateTimeEnd.minute,DateTimeEnd.second)
    DateEnd       = date(
        DateTimeEnd.year,DateTimeEnd.month,DateTimeEnd.day)
    EndString     = DateEnd.isoformat()+'T'+TimeEnd.isoformat()
    TimeStart     = time(
        DateTimeStart.hour,DateTimeStart.minute,DateTimeStart.second)
    DateStart     = date(
        DateTimeStart.year,DateTimeStart.month,DateTimeStart.day)
    StartString   = DateStart.isoformat()+'T'+TimeStart.isoformat()
    Prefix        = 'http://geomag.gcras.ru/intermagnet-webapp/'
    Prefix        = Prefix+'IntermagnetAscii?station='
    Suffix =    '&format=iaga2002&table=pre_min&timeFrom='
    Delimiter = '&timeTo='
    Error  = '99999'
    for Station in NameRus.split():
        URL = Prefix+Station+Suffix+StartString+Delimiter+EndString
        print 'Download from '+URL
        WriteMagFileName = Station+'.txt'
        WriteMagFile = open(WriteMagFileName,'w')
        ReadMagFile = urllib2.urlopen(URL)
        Lines = ReadMagFile.readlines()
        for line in Lines[3:]:
            if '|' in line: 
                WriteMagFile.write(line)
            else:
                LineSplit = line.split()
                TimeSplit = LineSplit[1].split('.')
                LineWrite = LineSplit[0]+' '+TimeSplit[0]+' '+LineSplit[3]
                LineWrite = LineWrite+' '+LineSplit[4]+' '+LineSplit[5]+'\n'
                if Error in LineWrite:
                    pass #print LineWrite
                else:
                    WriteMagFile.write(LineWrite)
        WriteMagFile.close()
        os.system('tail -1 '+WriteMagFileName)
    '''
    America stations 
    '''
    for Station in NameAme.split():
        URL = 'https://geomag.usgs.gov/ws/edge/?id='+Station
        URL = URL+'&starttime='+StartString+'Z&endtime='+EndString+'Z'
        print URL
        WriteMagFileName = Station+'.txt'
        WriteMagFile = open(WriteMagFileName,'w')
        ReadMagFile = urllib2.urlopen(URL)
        Lines = ReadMagFile.readlines()
        for line in Lines[3:]:
            if '|' in line: 
                WriteMagFile.write(line)#pass
            else:
                LineSplit = line.split()
                TimeSplit = LineSplit[1].split('.')
                LineWrite = LineSplit[0]+' '+TimeSplit[0]+' '+LineSplit[3]
                LineWrite = LineWrite+' '+LineSplit[4]+' '+LineSplit[5]+'\n'
                if Error in LineWrite:
                    pass#print LineWrite
                else:
                    WriteMagFile.write(LineWrite)
        WriteMagFile.close()
        os.system('tail -1 '+WriteMagFileName)

def realtime():
    DateTimeEnd   = datetime.utcnow()
    DateEnd       = date(
        DateTimeEnd.year,DateTimeEnd.month,DateTimeEnd.day)    
    DateTimeStart = datetime.combine(DateEnd,time(0,0,0))
    download(RusRealTime,AllAme,DateTimeStart,DateTimeEnd)

if __name__ == '__main__':
    realtime()
    exit()
