#!/usr/bin/env python

'''
This script copies the SWPCTEST param files from the Inputs directory, changes
the start and stop times based on 'event_list.txt', and moves them into the 
run directory corresponding to the event number.

The start time is adjusted such that it is five hours earlier than the event
start time.  If the imf argument is used, either the start time of the imf
file OR the event start minus five hours is used, which ever yields the
shortest simulation.

EXAMPLE:
  > change_params.py 3 /nobackupp8/username/run_event3

'''
import sys

# Ensure that we are using a version of python >= 2.7.
if sys.version_info < (2,7):
    print('ERROR: Python version must be >= 2.7')
    print('Current version: '+sys.version)
    exit()

####### Defined functions:
def parse_events(filename):
    '''
    Parse a file of event information.  Return as a dictionary, where each
    entry is a dictionary containing 'start' time of event, 'end' time of
    event (both datetime objects) and 'f107', the f10.7 solar radio flux.
    '''
    import datetime as dt
    
    # Open file object:
    rawfile = open(filename, 'r')

    # Create container for events:
    events = {}

    # Skip header:
    rawfile.readline()
    
    # Parse lines:
    fmt = '%Y-%m-%dT%H:%M:%S'
    for line in rawfile.readlines():
        parts = line.split()

        # Create new entry for current event:
        iNow = int(parts[0])
        events[iNow]  = {}

        # Populate:
        events[iNow]['start'] = dt.datetime.strptime(parts[1], fmt)
        events[iNow]['end']   = dt.datetime.strptime(parts[2], fmt)
        events[iNow]['f107']  = float(parts[-1])

    # Return data to caller:
    return events

def get_imf_time(imf_file):
    '''
    For an imf file at location "imf_file", get the start time of the file
    and return it to caller as a datetime object.
    '''

    from datetime import datetime

    # Open file:
    imf = open(imf_file, 'r')

    # Search for start:
    while '#START' not in imf.readline(): pass

    # Extract start time and reduce spacing between numbers:
    line = imf.readline()
    time = ' '.join(line.split()[:6])

    # Convert to datetime and return to user:
    return datetime.strptime(time, '%Y %m %d %H %M %S')
    
def edit_param(old_file, new_file, event_info, plot=False):
    '''
    Read a PARAM.in file, "old_file", and replace start and end times, f10.7
    flux, and other options to match a given event.  Write results to 
    "new_file". 
    '''
    import re
    
    # Open old and new file:
    old = open(old_file, 'r')
    new = open(new_file, 'w')

    # Loop through old file, fill in new file with changes:
    while True:
        # Read a line.  Break at EOF.
        line = old.readline()
        if not line: break

        # Change start or end time:
        if '#STARTTIME' in line or '#ENDTIME' in line:
            if 'START' in line:
                t = event_info['start']
            else:
                t = event_info['end']
            new.write(line)
            new.write(re.sub('\d{4}','{:04d}'.format(t.year),   old.readline()))
            new.write(re.sub('\d{2}','{:02d}'.format(t.month),  old.readline()))
            new.write(re.sub('\d{2}','{:02d}'.format(t.day),    old.readline()))
            new.write(re.sub('\d{2}','{:02d}'.format(t.hour),   old.readline()))
            new.write(re.sub('\d{2}','{:02d}'.format(t.minute), old.readline()))
            new.write(re.sub('\d{2}','{:02d}'.format(t.second), old.readline()))

        # Change F10.7 setting:
        elif '#IONOSPHERE' in line:
            f107 = '{:.1f}'.format(event_info['f107'])
            new.write(line)
            new.write(old.readline()) # TypeConductance
            new.write(old.readline()) # UseFullCurrent
            new.write(old.readline()) # UseRegion2
            new.write(re.sub('\d+\.\d+', f107, old.readline()))
            new.write(old.readline()) # Starlight
            new.write(old.readline()) # PolarCapPed

        # Turn off plots by removing '#':
        elif not plot and '#SAVEPLOT' in line and '#SAVEPLOTNAME' not in line:
            new.write(line[1:])

        # Change magnetometer grid files:
        elif '#MAGNETOMETERGRID' in line:
            # If no plotting, turn them off.
            if not plot:
                new.write(line[1:])
                continue
            # Else, turn up resolution.
            new.write(line)           # #MAGNETOMETER GRID
            new.write(old.readline()) # ascii
            new.write(old.readline()) # GEO
            new.write('72'+old.readline()[1:]) # higher lon res.
            new.write('33'+old.readline()[1:]) # higher lat res.

        # Disable satellite includes:
        elif '! Satellite' in line:
            old.readline()
            old.readline()

        # Reduce restart saving frequency:
        elif '#SAVERESTART' in line:
            new.write(line)
            new.write(old.readline())
            new.write(old.readline())
            new.write('360'+old.readline()[1:])
            
        # Echo all other lines:
        else:
            new.write(line)
            
    # Close both files.
    old.close()
    new.close()
    
####### Script:
import os
from datetime import timedelta
from argparse import ArgumentParser

# Default values:
basepath   = os.path.realpath(__file__).replace('change_params.py', '../')

# Configure arguments:
parser = ArgumentParser(description=__doc__)
parser.add_argument('event', type=int, help='The event number.')
parser.add_argument('rundir', help='Path of the run directory.')
parser.add_argument('-p', '--plot', action='store_true',
                    help='Keep SAVEPLOT commands.')
parser.add_argument('-i','--imf', default='', help='IMF file name corresponding'+
                    ' to PARAM file.  If provided, start time in PARAM will not'+
                    ' preceed first time listed in IMF file.')
parser.add_argument('-f', '--event_file', default=basepath+'/event_list.txt',
                    help="Set location of 'event_file.txt' which contains the "+
                    'details of each event.  Default is to search in SWPCTEST' +
                    ' directory.')

# Handle arguments:
args = parser.parse_args()

# Check target directory:
if not os.path.exists(args.rundir):
    raise ValueError('{} is not a valid directory'.format(args.rundir))

# Load event info:
event = parse_events(args.event_file)[args.event]

# Get start time from IMF file.
if args.imf:
    t_imf=get_imf_time(args.imf)
else:
    t_imf=event['start']-timedelta(hours=5)
    
# Turn back start time by 5 hours.  Ensure start >= time_imf_min
event['start'] = max( event['start']-timedelta(hours=5), t_imf)
    
# Change init file:
edit_param(basepath+'../Param/SWPC/PARAM.in_SWPC_init',
           args.rundir+'/PARAM.in_SWPC_init',    event, args.plot)
# Change restart file:
edit_param(basepath+'../Param/SWPC/PARAM.in_SWPC_restart',
           args.rundir+'/PARAM.in_SWPC_restart', event, args.plot)
