#!/usr/bin/env python

'''

This script copies the SWPCTEST param files from the Inputs directory, changes
the start and stop times based on 'event_list.txt', and moves them into the 
specified run directory.

USAGE:
  change_params.py [options] [event number] [rundir]

OPTIONS:
  -h or -H:  
      Print this help information.

  -f=[event file name]:
      Set the location of 'event_list.txt' that lists the details of each event.
      The default action is to look in the PWD.

EXAMPLE:
  > change_params.py 3 /nobackupp8/username/run_event1

'''

####### Defined functions:
def parse_events(filename):
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

####### Script:
import os
from sys import argv

# Default values:
basepath   = os.path.realpath(__file__).replace('change_params.py', '')
event_file = basepath+'/event_list.txt'

# Parse options from ARGV:
for arg in argv[1:-2]:
    if arg[:2].lower() == '-h':
        print __doc__
        exit()
    elif arg[:2] == '-f':
        event_file = arg[2:]
    else:
        raise ValueError('Unrecognized option: {}'.format(arg))

# Check number of arguments:
if len(argv) < 3:
    print(__doc__)
    print('Incorrect number of arguments!')
    exit()
    
# Parse target directory:
outdir = argv[-1]
if not os.path.exists(outdir):
    raise ValueError('{} is not a valid directory'.format(outdir))

# Parse event number:
try:
    iEvent = int(argv[-2])
except ValueError:
    print('Error converting {} to event number'.format(argv[-2]))
    print __doc__
    exit()

# Load event info:
event = parse_events(event_file)[iEvent]

## INIT FILE ##
old = open(basepath+'/Inputs/PARAM.in_SWPC_init', 'r')
new = open(outdir+'/PARAM.in_SWPC_init', 'w')

# Read file, replacing start and end times as well as F10.7:
while True:
    line = old.readline()
    if '#STARTTIME' in line:
        t = event['start']
        new.write(line)
        new.write(old.readline().replace('XXXX', '{:04d}'.format(t.year)))
        new.write(old.readline().replace('XXXX', '{:02d}'.format(t.month)))
        new.write(old.readline().replace('XXXX', '{:02d}'.format(t.day)))
        
        new.write(old.readline().replace('XXXX', '{:02d}'.format(t.hour)))
        new.write(old.readline().replace('XXXX', '{:02d}'.format(t.minute)))
        new.write(old.readline().replace('XXXX', '{:02d}'.format(t.second)))
    elif '#ENDTIME' in line:
        t = event['end']
        new.write(line)
        new.write(old.readline().replace('XXXX', '{:04d}'.format(t.year)))
        new.write(old.readline().replace('XXXX', '{:02d}'.format(t.month)))
        new.write(old.readline().replace('XXXX', '{:02d}'.format(t.day)))
        
        new.write(old.readline().replace('XXXX', '{:02d}'.format(t.hour)))
        new.write(old.readline().replace('XXXX', '{:02d}'.format(t.minute)))
        new.write(old.readline().replace('XXXX', '{:02d}'.format(t.second)))
        new.write('0.0		FracSecond\n\n')
        new.write('#END '+40*'#'+'\n')
        break
    elif '#IONOSPHERE' in line:
        new.write(line)
        new.write(old.readline()) # TypeConductance
        new.write(old.readline()) # UseFullCurrent
        new.write(old.readline()) # UseRegion2
        new.write(old.readline().replace('XXXX','{:.1f}'.format(event['f107'])))
        new.write(old.readline()) # Starlight
        new.write(old.readline()) # PolarCapPed
    else:
        new.write(line)
new.close()

## RESTART FILE ##
old = open(basepath+'/Inputs/PARAM.in_SWPC_restart', 'r')
new = open(outdir+'/PARAM.in_SWPC_restart', 'w')

# Read file, replacing start and end times as well as F10.7:
while True:
    line = old.readline()
    if '#ENDTIME' in line:
        t = event['end']
        new.write(line)
        new.write(old.readline().replace('XXXX', '{:04d}'.format(t.year)))
        new.write(old.readline().replace('XXXX', '{:02d}'.format(t.month)))
        new.write(old.readline().replace('XXXX', '{:02d}'.format(t.day)))
        
        new.write(old.readline().replace('XXXX', '{:02d}'.format(t.hour)))
        new.write(old.readline().replace('XXXX', '{:02d}'.format(t.minute)))
        new.write(old.readline().replace('XXXX', '{:02d}'.format(t.second)))
        new.write('0.0		FracSecond\n\n')
        new.write('#END '+40*'#'+'\n')
        break
    elif '#IONOSPHERE' in line:
        new.write(line)
        new.write(old.readline()) # TypeConductance
        new.write(old.readline()) # UseFullCurrent
        new.write(old.readline()) # UseRegion2
        new.write(old.readline().replace('XXXX','{:.1f}'.format(event['f107'])))
        new.write(old.readline()) # Starlight
        new.write(old.readline()) # PolarCapPed
    else:
        new.write(line)
new.close()
