#!/usr/bin/env python
from datetime import datetime, date, time, timedelta
import os
import math
'''
IAGA codes of Russian and Ukrainian stations
'''
AllRus='AIA ARS BOX KLI CPS IRT KHB KIV LVV MGD MOS NVS PET YAK'#KZN
RusRealTime ='KLI MOS'#ARS    #Stations which provide data in real time
'''
Same for American stations incuding Alaska, Guam, Honolulu, Puerto Rico
''' 
AmeRealTime='BOU BRW BSL CMO DED FRD FRN GUA HON NEW SHU SIT SJG TUC'
AllAme=AmeRealTime#+' HAD+KAK HER'
Error  = '99999'
Stations = []

IgrfName  = os.path.realpath(__file__).replace(
        'magnetometer.py', '../../bin/IGRF.exe')
Min2Rad = math.pi/10800  #\pi/180/60
import subprocess
def http_download(Station,URL,DateTimeStart):
    import urllib2
    print 'Download '+URL
    WriteMagFileName = Station+'.txt'
    WriteMagFile = open(WriteMagFileName,'w')
    ReadMagFile = urllib2.urlopen(URL)
    """
    Read magnetometer file
    """
    Lines = ReadMagFile.readlines()
    MetaData = [Station]  # to store a record for MAGNETOMETER.in file 
    iFileAux = open('data.aux','w')  #Input file to calculate IGRF
    iFileAux.write(str(
            DateTimeStart.year+DateTimeStart.timetuple().tm_yday/365.0)
                   +'\n')
    for line in Lines:
        if '|' in line:   # Header lines
            if 'Latitude' in line:
                LineSplit=line.split()
                Latitude = LineSplit[2]
                iFileAux.write(Latitude+'\n')
                MetaData.append(Latitude)
                WriteMagFile.write(line)
            elif 'Longitude' in line:
                LineSplit=line.split()
                Longitude = LineSplit[2]
                if float(Longitude)<0:
                    Longitude =str(
                        float(Longitude) + 360.0)
                iFileAux.write(Longitude+'\n') 
                MetaData.append(Longitude)
                Stations.append(MetaData)
                WriteMagFile.write(line)
            elif 'Elevation' in line:
                LineSplit=line.split()
                iFileAux.write(str(float(LineSplit[1])*0.001)+'\n')
                WriteMagFile.write(line)
            elif 'Reported' in line:
                LineSplit=line.split()
                if 'XY' in LineSplit[1]:
                    IsXYZ = True
                    IsHDZ = False
                    WriteMagFile.write(
                        ' Reported               HEZ'+
                        '                                          |\n')
                elif 'HD' in LineSplit[1]:
                    """
                    HDZ is first converted to XYZ
                    """
                    IsXYZ = True
                    IsHDZ = True
                    WriteMagFile.write(
                        ' Reported               HEZ'+
                        '                                          |\n')
                else:
                    IsXYZ = False
                    IsHDZ = False
                    WriteMagFile.write(line)
            elif 'DECBAS' in line:
                LineSplit = line.split()
                DeclinationBase = LineSplit[2] #in tenths of arcminutes
                WriteMagFile.write(
                    ' # Declination base = '
                    +DeclinationBase[0:len(DeclinationBase)-1]+'.'+
                    DeclinationBase[len(DeclinationBase)-1] +
                    ' arc minutes                      |\n')
            elif 'DATE' in line:
                iFileAux.close()
                iFileAux = open('data.aux','r')
                IgrfFile = open('igrf.aux','w')
                subprocess.call(IgrfName,stdin=iFileAux,stdout=IgrfFile)
                iFileAux.close()
                IgrfFile.close()
                IgrfFile = open('igrf.aux','r')
                WriteMagFile.write(
                    " # IGRF field at the station location:"+
                    "                               |\n")
                IgrfLines = IgrfFile.readlines()
                for IgrfLine in IgrfLines:
                    if 'D =' in IgrfLine:
                        l = IgrfLine.index('D =')
                        TrimLine = IgrfLine[l+3:len(IgrfLine)]
                        TrimLineSplit = TrimLine.split()
                        DeclBase = int(TrimLineSplit[0])*Min2Rad
                        CosDecl0 = math.cos(DeclBase)
                        SinDecl0 = math.sin(DeclBase)
                    elif 'H =' in IgrfLine:
                        l = IgrfLine.index('H =')
                        TrimLine = IgrfLine[l+3:len(IgrfLine)]
                        TrimLineSplit = TrimLine.split()
                        H0 = int(TrimLineSplit[0])
                    elif 'Z =' in IgrfLine:
                        l = IgrfLine.index('Z =')
                        TrimLine = IgrfLine[l+3:len(IgrfLine)]
                        TrimLineSplit = TrimLine.split()
                        Z0 = int(TrimLineSplit[0])
                    WriteMagFile.write(IgrfLine)
                IgrfFile.close()
                LineSplit = line.split()
                LineWrite = LineSplit[0]+'   '+LineSplit[1]
                LineWrite = LineWrite+'   '+LineSplit[3]
                LineWrite = LineWrite+'   '+LineSplit[4]
                LineWrite = LineWrite+'   '+LineSplit[5]
                LineWrite=LineWrite+'                                     '
                LineWrite = LineWrite+'|\n'
                WriteMagFile.write(LineWrite)
            elif 'http' in line:
                WriteMagFile.write(line)
            elif '#' in line:
                pass
            else:
                WriteMagFile.write(line)
        else:          #End of header
            LineSplit = line.split()
            if Error in LineSplit[3]+' '+LineSplit[4]+' '+LineSplit[5]:
                pass
            else:      #Good data line
                TimeSplit = LineSplit[1].split('.')
                LineWrite = LineSplit[0]+' '+TimeSplit[0]+' '
                if IsHDZ:
                    """
                    Transform HD=>XY
                    """
                    H = float(LineSplit[3])
                    D = float(LineSplit[4])*Min2Rad
                    X = H*math.cos(D)
                    Y = H*math.sin(D)
                elif IsXYZ:
                    X = float(LineSplit[3])
                    Y = float(LineSplit[4]) 
                if IsXYZ:
                    """
                    Transform XY=>HE using IGRF declination
                    """
                    H = X*CosDecl0 + Y*SinDecl0
                    E = Y*CosDecl0 - X*SinDecl0
                    Z = float(LineSplit[5])
                    if 'AIA' in Station:
                        """
                        XYZ variations, no base field included
                        """
                        pass
                    else:
                        """
                        Subtract IGRF H,Z field
                        """
                        H = H - H0
                        Z = Z - Z0
                    LineWrite = LineWrite+'{0:.2f}'.format(H)
                    LineWrite = LineWrite+' '+'{0:.2f}'.format(E)+' '
                    LineWrite = LineWrite+'{0:.2f}'.format(Z)+'\n'   
                else:
                    """
                    HEZ components, subtract IGRF H,Z field
                    """
                    H = float(LineSplit[3]) - H0
                    Z = float(LineSplit[5]) - Z0
                    LineWrite = LineWrite+'{0:.2f}'.format(H)
                    LineWrite = LineWrite+' '+LineSplit[4]+' '
                    LineWrite = LineWrite+'{0:.2f}'.format(Z)+'\n' 
            WriteMagFile.write(LineWrite) #Good data line is written
    """
    No more lines
    """
    WriteMagFile.close()
    os.system('tail -1 '+WriteMagFileName)
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
    for Station in NameRus.split():
        URL = Prefix+Station+Suffix+StartString+Delimiter+EndString
        http_download(Station,URL,DateTimeStart)
        
    '''
    America stations 
    '''
    for Station in NameAme.split():
        """
        Construct the request
        """
        URL = 'https://geomag.usgs.gov/ws/edge/?id='+Station
        URL = URL+'&starttime='+StartString+'Z&endtime='
        URL = URL+EndString+'Z&elements=H,E,Z'
        http_download(Station,URL,DateTimeStart)
def realtime(nDays):
    DateTimeEnd   = datetime.utcnow()
    DateEnd       = date(
        DateTimeEnd.year,DateTimeEnd.month,DateTimeEnd.day)    
    DateTimeStart = datetime.combine(
        DateEnd,time(0,0,0)) - timedelta(days=nDays-1)
    download(RusRealTime,AmeRealTime,DateTimeStart,DateTimeEnd)
if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser(
        formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument('-DateStart', default='',
                        help='Start date in the format YYYY-MM-DD')
    parser.add_argument('-nDays',type=int, default=1, help=
                        """
   Number of days
                       """)
    args = parser.parse_args()
    DateStart = args.DateStart
    nDays     = args.nDays
    if '-' in DateStart:
        DateStartSplit = DateStart.split('-')
        DateTimeStart = datetime.combine(
            date(int(DateStartSplit[0]),
                 int(DateStartSplit[1]),
                 int(DateStartSplit[2])),time(0,0,0))
        DateTimeEnd = DateTimeStart + timedelta(days=nDays,minutes=-1)
        download(AllRus,AllAme,DateTimeStart,DateTimeEnd)
        """
        Arctic stations
        """
        import ftplib
        ftp = ftplib.FTP('imagftp.gcras.ru','polarguest','ytpfuheprf')
        ArcticSTA = 'amd bbg dik loz pbk tik viz'
        for sta in ArcticSTA.split():
            DirName = '/'+sta+'/'+DateStartSplit[0]
            ftp.cwd(DirName)
            WriteMagFileName = sta.upper()+'.txt'
            WriteMagFile = open(WriteMagFileName,'w')
            MetaData = [sta.upper()]
            iFileAux = open('data.aux','w')
            iFileAux.write(str(
                    DateTimeStart.year
                    + DateTimeStart.timetuple().tm_yday/365.0)
                           +'\n')
            for x in range(0, nDays):
                local = open('local.aux','wb')
                DateTime = DateTimeStart + timedelta(days=x) 
                DateTimeString = DateTime.isoformat()
                DateTimeStringSplit = DateTimeString.split('T')
                DateString = DateTimeStringSplit[0]
                DateStringSplit = DateString.split('-')
                DateString = DateStringSplit[0]+DateStringSplit[1]
                DateString = DateString+DateStringSplit[2]
                filename= sta+DateString+'vmin.min'
                print 'Download '+DirName+'/'+filename
                ftp.retrbinary("RETR "+filename,local.write)
                local.close()
                ReadMagFile = open('local.aux','r')
                Lines = ReadMagFile.readlines()
                for line in Lines:
                    if '|' in line:
                        if x>0:
                            pass
                        else:
                            if 'Latitude' in line:
                                LineSplit=line.split()
                                Latitude = LineSplit[2]
                                iFileAux.write(Latitude+'\n')
                                MetaData.append(Latitude)
                            if 'Longitude' in line:
                                LineSplit=line.split()
                                Longitude = LineSplit[2]
                                if float(Longitude)<0:
                                    Longitude =str(
                                        float(Longitude) + 360.0)
                                iFileAux.write(Longitude+'\n') 
                                MetaData.append(Longitude)
                                Stations.append(MetaData)
                            if 'Elevation' in line:
                                LineSplit=line.split()
                                iFileAux.write(
                                    str(float(LineSplit[1])*0.001)+'\n')
                                iFileAux.close()
                            if 'DATE' in line:
                                '''
                                Remove day of year
                                '''
                                LineSplit = line.split()
                                LineWrite = LineSplit[0]+'   '+LineSplit[1]
                                LineWrite = LineWrite+'   '+LineSplit[3]
                                LineWrite = LineWrite+'   '+LineSplit[4]
                                LineWrite = LineWrite+'   '+LineSplit[5]
                                LineWrite = LineWrite+'                   '
                                LineWrite = LineWrite+'                  '
                                LineWrite = LineWrite+'|\n'
                               
                                WriteMagFile.write(LineWrite)
                            else:
                                WriteMagFile.write(line)
                    else:
                        LineSplit = line.split()
                        TimeSplit = LineSplit[1].split('.')
                        LineWrite = LineSplit[0]+' '+TimeSplit[0]
                        LineWrite = LineWrite+' '+LineSplit[3]
                        LineWrite = LineWrite+' '+LineSplit[4]
                        LineWrite = LineWrite+' '+LineSplit[5]+'\n'
                        if Error in LineWrite:
                            pass
                        else:
                            WriteMagFile.write(LineWrite)
            WriteMagFile.close()
            os.system('tail -1 '+WriteMagFileName)
        os.system('rm -f *.aux')
        ftp.close()
    else:
        realtime(nDays)
    """
    Make magnetometer file with all station names and coordinates
    """ 
    os.system('rm -f MAGNETOMETER.in')
    iFileAll = open('MAGNETOMETER.in','w')
    iFileAll.write('#COORD\n')
    iFileAll.write('GEO\n\n')
    iFileAll.write(
        'List of '+str(len(Stations))+' stations plus DST\n')
    iFileAll.write('#START\n')
    iFileAll.write('DST 360.0 360.0\n')
    for MetaData in Stations:
        iFileAll.write(
            MetaData[0]+' '+MetaData[1]+' '+MetaData[2]+'\n')
    iFileAll.close()

