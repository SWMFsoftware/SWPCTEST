#!/usr/bin/env python
from datetime import datetime, date, time, timedelta
import os
import math
'''
IAGA codes of Russian and Ukrainian stations
'''
AllRus='AIA ARS BOX KLI CPS IRT KHB KIV KZN LVV MGD MOS NVS PET SPG YAK'
RusRealTime ='ARS KLI MOS SPG' #Stations which provide data in real time
'''
Same for American stations incuding Alaska, Guam, Honolulu, Puerto Rico
''' 
AmeRealTime='BOU BRW BSL CMO DED FRD FRN GUA HON NEW SHU SIT SJG TUC'
AllAme=AmeRealTime      #+' HAD HER KAK'
ArcticSTA = 'amd bbg dik loz pbk tik viz'
"""
Erroneous or missing data, if present on one the first three
components:
"""
Error  = '99999'
ErrMessage = 'Error='+Error+' in line ' 
Stations = []
IgrfName  = os.path.realpath(__file__).replace(
    'magnetometer.py', '../../bin/IGRF.exe')

Min2Rad = math.pi/10800  #\pi/180/60
import subprocess
def magin():
    """
    Make magnetometer file with all station names and coordinates
    """ 
    os.system('rm -f MAGNETOMETER.in')
    iFileAll = open('MAGNETOMETER.in','w')
    iFileAll.write('#COORD\n')
    iFileAll.write('MAG\n\n')
    iFileAll.write(
        'List of '+str(len(Stations))+' stations plus DST\n')
    iFileAll.write('#START\n')
    iFileAll.write('DST 360.0 360.0\n')
    for MetaData in Stations:
        iFileAll.write(' '.join(MetaData)+'\n')
    iFileAll.close()
def http_download(Station,URL,DateTimeStart,IsNoBase):
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
    nData = 0
    for line in Lines:
        if '|' in line:   # Header lines
            if 'Latitude' in line:
                LineSplit=line.split()
                Latitude = LineSplit[2]
                iFileAux.write(Latitude+'\n')
                WriteMagFile.write(line)
            elif 'Longitude' in line:
                LineSplit=line.split()
                Longitude = LineSplit[2]
                if float(Longitude)<0:
                    Longitude =str(
                        float(Longitude) + 360.0)
                iFileAux.write(Longitude+'\n') 
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
                    ' arc minutes                              |\n')
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
                    elif 'Latitude' in IgrfLine:
                        l = IgrfLine.index('Latitude')
                        TrimLine = IgrfLine[l+8:len(IgrfLine)]
                        TrimLineSplit = TrimLine.split()
                        MetaData.append(TrimLineSplit[0])
                    elif 'Longitude' in IgrfLine:
                        l = IgrfLine.index('Longitude')
                        TrimLine = IgrfLine[l+9:len(IgrfLine)]
                        TrimLineSplit = TrimLine.split()
                        MetaData.append(TrimLineSplit[0])
                    WriteMagFile.write(IgrfLine)
                IgrfFile.close()
                LineSplit = line.split()
                LineWrite = '     '.join(
                    LineSplit[0:2]+[Station+'H',Station+'E',
                    Station+'Z'])+29*' '+'|\n'
                WriteMagFile.write(LineWrite)
            elif 'http' in line:
                WriteMagFile.write(line)
            elif '#' in line:
                pass
            else:
                WriteMagFile.write(line)
        else:          #End of header
            LineSplit = line.split()
            if Error in ' '.join(LineSplit[3:6]):
                if nData>0:
                    print ErrMessage+"  ".join(LineSplit[0:6])
            else:      #Good data line
                nData = nData +1
                LineWrite = LineSplit[0]+' '+LineSplit[1]+' '
                if IsHDZ:
                    H = float(LineSplit[3])
                    D = float(LineSplit[4])*Min2Rad
                    if IsNoBase:
                        """
                        Convert variation D to E 
                        """
                        E = H0*math.tan(D)
                        Z = float(LineSplit[5])
                        IsXYZ = False
                    else:
                        """
                        Transform HD=>XY
                        """
                        X = H*math.cos(D)
                        Y = H*math.sin(D)
                elif IsXYZ:
                    X = float(LineSplit[3])
                    Y = float(LineSplit[4]) 
                else:
                    """
                    HEZ 
                    """
                    H = float(LineSplit[3])
                    E = float(LineSplit[4])
                    Z = float(LineSplit[5])
                if IsXYZ:
                    """
                    Transform XY=>HE using IGRF declination
                    """
                    H = X*CosDecl0 + Y*SinDecl0
                    E = Y*CosDecl0 - X*SinDecl0
                    Z = float(LineSplit[5])  
                if not IsNoBase:
                    """
                    Subtract IGRF H,Z field
                    """
                    H = H - H0
                    Z = Z - Z0
                LineWrite = LineWrite+'{0:-8.2f}'.format(H)
                LineWrite = LineWrite+' '+'{0:-8.2f}'.format(E)+' '
                LineWrite = LineWrite+'{0:-8.2f}'.format(Z)+'\n'  
                WriteMagFile.write(LineWrite) #Good data line is written
    """
    No more lines
    """
    WriteMagFile.close()
    if nData > 1:
        """
        If data are not missing
        """
        Stations.append(MetaData)
    os.system('tail -1 '+WriteMagFileName)
def download(NameRus,NameAme,NoBase,DateTimeStart,DateTimeEnd):
    """
    In some station the base field is not added to the data and 
    there is no need to subtract it, to obtain variation 
    Call with NoBase='' to avoid subtracting base field, if desired  
    """
    '''
    -start download magnetometer files remove older one
    '''
    os.system("rm -f *.txt")
    EndString     = DateTimeEnd.strftime("%Y-%m-%dT%H:%M:%S")
    StartString   = DateTimeStart.strftime("%Y-%m-%dT%H:%M:%S")
    Prefix        = 'http://geomag.gcras.ru/intermagnet-webapp/'
    Prefix        = Prefix+'IntermagnetAscii?station='
    Suffix =    '&format=iaga2002&table=pre_min&timeFrom='
    Delimiter = '&timeTo='
    for Station in NameRus.split():
        URL = Prefix+Station+Suffix+StartString+Delimiter+EndString
        http_download(Station,URL,DateTimeStart,Station in NoBase)
        
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
        http_download(Station,URL,DateTimeStart,False)
def realtime(nDays):
    DateTimeEnd   = datetime.utcnow()
    DateEnd       = date(
        DateTimeEnd.year,DateTimeEnd.month,DateTimeEnd.day)    
    DateTimeStart = datetime.combine(
        DateEnd,time(0,0,0)) - timedelta(days=nDays-1)
    download(RusRealTime,AmeRealTime,'ARS', DateTimeStart,DateTimeEnd)
    os.system('rm -f *.aux')
    magin()
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
        DateTimeStart = datetime.strptime(DateStart,'%Y-%m-%d')
        DateTimeEnd = DateTimeStart + timedelta(days=nDays,minutes=-1)
        download(AllRus,AllAme,'AIA KZN',DateTimeStart,DateTimeEnd)
        """
        Arctic stations
        """
        import ftplib
        ftp = ftplib.FTP('imagftp.gcras.ru','polarguest','ytpfuheprf')
        for sta in ArcticSTA.split():
            if 'pbk' in sta and DateTimeStart>datetime.strptime(
                '2017-07-31','%Y-%m-%d'):
                sta = 'brn' # No data for Pevel after this date
            DirName = '/'+sta+'/'+str(DateTimeStart.year)
            ftp.cwd(DirName)
            WriteMagFileName = sta.upper()+'.txt'
            WriteMagFile = open(WriteMagFileName,'w')
            MetaData = [sta.upper()]
            iFileAux = open('data.aux','w')
            iFileAux.write(str(
                    DateTimeStart.year
                    + DateTimeStart.timetuple().tm_yday/365.0)
                           +'\n')
            nData = 0
            for x in range(0, nDays):
                local = open('local.aux','wb')
                DateTime = DateTimeStart + timedelta(days=x) 
                filename= sta+DateTime.strftime("%Y%m%d")+'vmin.min'
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
                            if 'Longitude' in line:
                                LineSplit=line.split()
                                Longitude = LineSplit[2]
                                if float(Longitude)<0:
                                    Longitude =str(
                                        float(Longitude) + 360.0)
                                iFileAux.write(Longitude+'\n') 
                            if 'Elevation' in line:
                                LineSplit=line.split()
                                iFileAux.write(
                                    str(float(LineSplit[1])*0.001)+'\n')
                                iFileAux.close()
                            if 'DATE' in line:
                                iFileAux.close()
                                iFileAux = open('data.aux','r')
                                IgrfFile = open('igrf.aux','w')
                                subprocess.call(
                                    IgrfName,stdin=iFileAux,stdout=IgrfFile)
                                iFileAux.close()
                                IgrfFile.close()
                                IgrfFile = open('igrf.aux','r')
                                IgrfLines = IgrfFile.readlines()
                                for IgrfLine in IgrfLines:
                                    if 'Latitude' in IgrfLine:
                                        l = IgrfLine.index('Latitude')
                                        TrimLine = IgrfLine[l+8:len(IgrfLine)]
                                        TrimLineSplit = TrimLine.split()
                                        MetaData.append(TrimLineSplit[0])
                                        WriteMagFile.write(IgrfLine)
                                    elif 'Longitude' in IgrfLine:
                                        l = IgrfLine.index('Longitude')
                                        TrimLine = IgrfLine[l+9:len(IgrfLine)]
                                        TrimLineSplit = TrimLine.split()
                                        MetaData.append(TrimLineSplit[0])
                                        WriteMagFile.write(IgrfLine)
                                IgrfFile.close()
                                '''
                                Remove day of year
                                '''
                                LineSplit = line.split()
                                LineWrite = '   '.join(
                                    LineSplit[0:2]+LineSplit[3:6])+37*' '+'|\n'
                                WriteMagFile.write(LineWrite)
                            else:
                                WriteMagFile.write(line)
                    else:
                        LineSplit = line.split()
                        LineWrite = ' '.join(
                            LineSplit[0:2])+'  '+"  ".join(
                            LineSplit[3:6])+'\n'
                        if Error in LineWrite:
                            if nData>0:
                                print ErrMessage+" ".join(LineSplit[0:6])
                        else:
                            nData = nData +1
                            WriteMagFile.write(LineWrite)
            if nData > 1:
                """
                If data are not missing
                """
                Stations.append(MetaData)
            WriteMagFile.close()
            os.system('tail -1 '+WriteMagFileName)
        os.system('rm -f *.aux')
        ftp.close()
        magin()
    else:
        realtime(nDays)

