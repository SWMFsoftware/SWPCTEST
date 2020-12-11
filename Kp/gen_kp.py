#!/usr/bin/env python
'''
A one-off script for generating KP comparison files for all events
in the SWPCTEST repository.
'''

import datetime as dt
from spacepy.pybats.kyoto import fetch

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
        if len(parts)>3:
            events[iNow]['f107']  = float(parts[-1])
        else:
            events[iNow]['f107'] = -1

    # Return data to caller:
    return events

if __name__ == '__main__':
    # Load event info:
    events = parse_events('../event_list.txt')
    for e in events:
        ev = events[e]
        # Fetch official Kp from Kyoto WDC:
        kp = fetch('kp', ev['start'], ev['end'])
        # Save to file:
        with open(f'event_{e:02d}.txt','w') as f:
            f.write('Kp obtained from http://wdc.kugi.kyoto-u.ac.jp/\n')
            f.write('All times are the center of each 3-hour bin\n')
            f.write('year mo dy hr mn sc kp\n')
            for t, k in zip(kp['time'], kp['kp']):
                f.write(f'{t:%Y %m %d %H %M %S}\t{k:9.7f}\n')
