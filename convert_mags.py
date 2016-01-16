#!/usr/bin/env python

'''
This script converts magnetometer output from the SWMF into the format required
by CCMC and by the SWPC validation suite.  A new file is made for each
magnetometer.

Issues: need to incorporate station lat/lon into output.

Usage: convert_mags.py [options] magnetometer_file
       ...where "magnetometer_file" can be a the path to an SWMF/BATS-R-US
       magnetometer output file OR a directory containing a magnetometer file.

Options:
   -h or -help:
     Print this help information.

   -o=[output path]
     Set the path to save the resulting output files.  Default is PWD.

'''

import os
import sys
import datetime as dt
from glob import glob

# Default values:
outdir = '.'
magfile = None

# Parse argument list.
for arg in sys.argv[1:-1]:
    # Print help:
    if arg.lower()[:2] == '-h':
        print __doc__
        exit()
    # Set outdir:
    elif arg[:3]=='-o=':
        outdir = arg[3:]
    else:
        print(__doc__)
        print('Unrecognized argument: {}'.format(arg))

# Set the magnetometer file:
magfile = magfile=sys.argv[-1]
# If a directory is given, search for the mag file:
if os.path.isdir(magfile):
    found_files = glob(magfile+'/magnetometer*')
    if not found_files:
        raise(ValueError('No magnetometer file found in {}.'.format(magfile)))
    magfile = found_files[0]

# Check magfile argument:
if not magfile:
    print __doc__
    print('Magnetometer file argument missing!')
    exit()
        
infile = open(magfile, 'r')

# Read header to get list of variables and stations.
stats    = infile.readline().split(':')[-1].split()
varnames = infile.readline().split()

# Slurp rest of file.
rawlines = infile.readlines()
infile.close()

# Create new files, write headers.
files = []
for i,s in enumerate(stats):
    f = open(outdir+'/{}.txt'.format(s), 'w')
    f.write('# SWMF run: SWMF_SWPC\n')
    f.write('#SWMF run finished on {}\n'.format(dt.datetime.now().isoformat()))
    f.write('# North, East and vertical components of magnetic field\n')
    f.write('# computed from magnetosphere & ionosphere currents\n')
    f.write('# Station: {}\n'.format(s.lower()))
    f.write('# Position (MAG): lon=       355.310 lat=      55.6300\n')
    f.write('Year Month Day Hour Min Sec GeomagLat GeomagLon B_NorthGeomag')
    f.write(' B_EastGeomag B_DownGeomag\n[year] [month] [day] [hour] [min]')
    f.write(' [s] [deg] [deg] [nT] [nT] [nT]\n')

    # Loop through lines related to this magnetometer:
    for l in rawlines[i::12]:
        # Parse line and turn into floating-point values.
        parts = l.split()
        parts = [float(p) for p in parts]

        # Write time:
        f.write('{1:4.0f}{2:5.0f}{3:5.0f}{4:5.0f}{5:5.0f}{6:5.0f}'.format(*parts))
        # Write lat-lon:
        f.write('{:13.3f}{:13.3f}'.format(0.0, 0.0))
        # Write perturbation:
        f.write('{12:13.3f}{13:13.3f}{14:13.3f}\n'.format(*parts))

    f.close()
