#!/usr/bin/env python3

import numpy as np
from datetime import datetime

def download_omni(str_start_time='2019-08-04T00:00:00',
                  str_end_time  ='2019-08-08T00:00:00',
                  str_time_filename='2019_08_04',
                  out_dir='./',RunID=1,DoSaveFile=True):

    from ai import cdas
    from statistics import mean 

    start_time = datetime.strptime(str_start_time,'%Y-%m-%dT%H:%M:%S')
    end_time   = datetime.strptime(str_end_time,  '%Y-%m-%dT%H:%M:%S')

    data_sw   = cdas.get_data('istp_public','OMNI_HRO2_1MIN', 
                              start_time, end_time, 
                              ['BX_GSE','BY_GSE','BZ_GSE','Vx','Vy','Vz',
                               'proton_density','T','SYM_H','AL_INDEX'])

    data_f107 = cdas.get_data('istp_public','OMNI2_H0_MRG1HR',
                              start_time, end_time, ['F10_INDEX1800']) 

    # An array contains only TRUE
    index = np.ones(len(data_sw['EPOCH_TIME']), dtype=bool)

    # B field, velocity, density, temperature
    bad_data = [9999.99, 99999.9, 999.99, 10000000.0]

    # Set False if the value is one of the bad_data
    for key in data_sw:
        index=index & [False if x in bad_data else True for x in data_sw[key]]

    # well, the new dictionary for the data without any bad data
    # Cannot use data_sw_clean=data_sw as changing data_sw_clean would 
    # also modify data_sw
    data_sw_clean={}

    # set the new dictionary
    for key in data_sw:
        data_sw_clean[key] = data_sw[key][index]

    if DoSaveFile:
        EventDir=out_dir+'/event'+str(RunID).zfill(2)

        # write the header for the orig solar wind file.
        sw_output = open(EventDir+'/'+str_time_filename+'_orig.dat','w')
        sw_output.write("Initial OMNI file\n\n")
        sw_output.write("#COORDINATES\n")
        sw_output.write("GSE\n\n")
        sw_output.write("year mo dy hr mn sc msc Bx By Bz Ux Uy Uz Rho T\n")
        sw_output.write("#START\n")

        # write the header for the Sym-H and AL file.
        kp_output = open(EventDir+'/Dst.txt','w')
        kp_output.write('Sym-H and AL obtained from OMNI 1 min data. Units in nT.\n')
        kp_output.write('year mo dy hr mn sc msc dst_sm AL \n')

        # get the keys...
        keys_sw = list(data_sw.keys())
        # The first loop loops through all the values...
        for iTime,obs_time in enumerate(data_sw[keys_sw[0]]):
            sw_write = datetime.strftime(obs_time, '%Y %m %d %H %M %S %f')[:-3]
            kp_write = datetime.strftime(obs_time, '%Y %m %d %H %M %S %f')[:-3]
            # The second loop is for different vars. 
            # The very last two are SYM-H and AL
            for key in keys_sw[1:-2]:
                sw_write += "{:13.2f}".format(data_sw[key][iTime])
            for key in keys_sw[-2:]:
                # well, here assume that Sym-H and AL does not contain any bad
                # data...
                kp_write += "{:10.2f}".format(data_sw[key][iTime])
            sw_output.write(sw_write+'\n')
            kp_output.write(kp_write+'\n')
        sw_output.close()
        kp_output.close()

        # write the header for the solar wind file that does not contain any 
        # bad data.
        sw_output = open(EventDir + '/IMF.dat','w')
        sw_output.write("Final OMNI file\n\n")
        sw_output.write("Initial number of points = "
                          +str(len(data_sw[keys_sw[0]]))+'\n')
        sw_output.write("Final   number of points = "
                          +str(len(data_sw_clean[keys_sw[0]]))+'\n\n')
        sw_output.write("#COORDINATES\n")
        sw_output.write("GSE\n\n")
        sw_output.write("year mo dy hr mn sc msc Bx By Bz Ux Uy Uz Rho T\n")
        sw_output.write("#START\n")

        # well, keys are the same for data_sw and data_sw_clean
        for iTime,obs_time in enumerate(data_sw_clean[keys_sw[0]]):
            sw_write = datetime.strftime(obs_time, '%Y %m %d %H %M %S %f')[:-3]
            for key in keys_sw[1:-2]:
                sw_write += "{:13.2f}".format(data_sw_clean[key][iTime])
            sw_output.write(sw_write+'\n')
        sw_output.close()

