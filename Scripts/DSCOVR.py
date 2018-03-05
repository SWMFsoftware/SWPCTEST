#!/usr/bin/env python
from datetime import datetime, date, time, timedelta
import os
import urllib2
##############
def DSCOVR():
    '''
    Open Magnitometer file 
    '''
    MagFileId = urllib2.urlopen(
        "http://services.swpc.noaa.gov/products/solar-wind/mag-2-hour.json")
    Mag = MagFileId.read()
    Mag = Mag[2:len(Mag)-2]
    MagSplit = Mag.split('],[')
    nLength = len(MagSplit)
    '''
    Open Plasma file
    '''
    PlasmaFileId = urllib2.urlopen(
        "http://services.swpc.noaa.gov/products/solar-wind/plasma-2-hour.json")
    Plasma = PlasmaFileId.read()
    Plasma = Plasma[2:len(Plasma)-2]
    PlasmaSplit = Plasma.split('],[')
    nPlasma = len(PlasmaSplit)
    '''
    Check if both instruments are OK 
    '''
    if(nPlasma<>nLength):
        print "Length of Mag file=",nLength," differs from that for plasma=",nPlasma
        exit()
    '''
    Read file of satellite locations
    '''
    PosFileId = urllib2.urlopen(
        "http://services.swpc.noaa.gov/products/solar-wind/ephemerides.json")
    Pos = PosFileId.read()
    Pos = Pos[2:len(Pos)-2]
    PosSplit = Pos.split('],[')
    LastPos =  PosSplit[len(PosSplit)-1]
    print LastPos
    LastPos = LastPos[1:len(LastPos)-1]
    LastPosSplit =  LastPos.split('","')
    '''
    Open new file L1.dat
    '''
    FileId = open('L1.dat','w')
    FileId.write('Real-time solar wind data from DISCOVR'+'\n')
    FileId.write('Units: nT, km/s, amu/cc, K'+'\n\n')

    FileId.write('#SATELLITEXYZ'+'\n')
    Coord = float(LastPosSplit[1])/6378
    FileId.write("%-6.1f \n"%Coord)
    FileId.write("0.0 \n0.0 \n")
    #Coord = float(LastPosSplit[2])/6378
    #FileId.write("%-6.1f \n"%Coord)
    #Coord = float(LastPosSplit[3])/6378
    #FileId.write("%-6.1f \n"%Coord)
    FileId.write('\n'+'#COORDINATES'+'\n')
    FileId.write('GSM'+'\n\n')
    FileId.write(
        'year  mo  dy  hr  mn  sc msc Bx By Bz Ux Uy Uz rho T'+'\n')
    FileId.write('#START'+'\n')
    '''
    Start Date and time for MAG file
    '''
    b = MagSplit[1]
    b = b[1:len(b)-1]
    bsplit = b.split('","')
    TimeTag = bsplit[0]
    DateTime = TimeTag.split(' ')
    Date = DateTime[0]
    DateSplit = Date.split('-')
    Time = DateTime[1]
    TimeSplit = Time.split(':')
    DateTimeMag = datetime.combine(
        date(int(DateSplit[0]),int(DateSplit[1]),int(DateSplit[2])),
        time(int(TimeSplit[0]),int(TimeSplit[1])))
    print "Magentic   data file starts at ",DateTimeMag
    '''
    Date and time for solar wind file
    '''
    Wind = PlasmaSplit[1]
    Wind = Wind[1:len(Wind)-1]
    WindSplit = Wind.split('","')
    TimeTag = WindSplit[0]
    DateTime = TimeTag.split(' ')
    Date = DateTime[0]
    DateSplit = Date.split('-')
    Time = DateTime[1]
    TimeSplit = Time.split(':')
    DateTimeWind = datetime.combine(
    date(int(DateSplit[0]),int(DateSplit[1]),int(DateSplit[2])),
    time(int(TimeSplit[0]),int(TimeSplit[1])))
    print "Solar wind data file starts at ",DateTimeWind
############Offset may be needed???  
    if(DateTimeWind > DateTimeMag):
        iOffsetWind = -1
        iOffsetMag  =  0
        lStart = 2
    elif(DateTimeWind < DateTimeMag):
        iOffsetWind =  0
        iOffsetMag  = -1
        lStart = 2
    else:
        iOffsetWind =  0
        iOffsetMag  =  0
        lStart = 1
    '''
    Merge files 
    '''
    for l in range(lStart, nLength):
        b = MagSplit[l + iOffsetMag]
        b = b[1:len(b)-1]
        bsplit = b.split('","')
        TimeTag = bsplit[0]
        DateTime = TimeTag.split(' ')
        Date = DateTime[0]
        DateSplit = Date.split('-')
        Time = DateTime[1]
        TimeSplit = Time.split(':')
        Sec = TimeSplit[2]
        SecSplit=Sec.split('.')
        Wind = PlasmaSplit[l + iOffsetWind]
        Wind = Wind[1:len(Wind)-1]
        WindSplit = Wind.split('","')
        FileId.write(
            ' '+DateSplit[0]+' '+DateSplit[1]+' '+DateSplit[2]+' '+
            TimeSplit[0]+' '+TimeSplit[1]+' '+SecSplit[0]+' '+SecSplit[1]+'  '+
            bsplit[1]+' '+bsplit[2]+' '+bsplit[3]+' -'+
            WindSplit[2]+' 0.0 0.0 '+WindSplit[1]+' '+WindSplit[3]+'\n')
        
    FileId.close()
    '''
    File with location of XMax boundary
    '''
    FileId = open('IMF_mhd.dat','w')
    FileId.write('Propagated from L1 to (X,Y,Z):   32  0  0')
    FileId.close()
    BallisticProName   = os.path.realpath(__file__).replace(
        'DSCOVR.py', '../Idl/ballistic.pro')
    os.system("idl "+BallisticProName)
    os.system("rm -f L1.dat IMF_mhd.dat")
    os.system("mv IMF_ballistic.dat IMF.dat")
    SolIndexesFileId = urllib2.urlopen(
        "http://services.swpc.noaa.gov/text/daily-solar-indices.txt")
    for line in SolIndexesFileId.readlines():
        saveline = line
    F107 = saveline.split()
    '''
    Save F10.7 flux
    '''
    if os.path.isfile('Param/f107.txt'):
        FileId = open('Param/f107.txt','w')
        FileId.write(
            '#yyyy-MM-dd HH:mm value qualifier description\n')
        FileId.write(
            DateSplit[0]+'-'+DateSplit[1]+'-'+DateSplit[2]+' '+
            TimeSplit[0]+':'+TimeSplit[1]+'  '+F107[3]+'.0  ""  ""')  
        FileId.close
if __name__ == '__main__':
    DSCOVR()
    exit()
