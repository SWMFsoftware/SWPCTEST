#!/usr/bin/perl -s
&print_help if $h or $help;

my $NoPlot = $noplot;
my $IMF    = ($imf or "L1.dat");
my $iRun   = $irun;

# Allow in-place editing of the PARAM.in and job.long files
$^I = "";

use strict;

die "Could not find IMF file $IMF\n" if not -e $IMF;

# make sure that SATELLITES.in file exists (may be empty)
`touch SATELLITES.in`;

print "Reading info from IMF file=$IMF\n";

# Read first line after START or the 3rd line if there is no START
$_ = `grep -A1 START $IMF | tail -1`;

$_ = `head -3 $IMF | tail -1` if not $_;

# Create a proper date from first 6 elements
s/\s*(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+).*/
$1\t\t\tiYear\n$2\t\t\tiMonth\n$3\t\t\tiDay\n$4\t\t\t\iHour\n$5\t\t\tiMinute\n$6\t\t\tiSecond/;

my $start = $_;
print "start=$start";

# Create the year-month-day string to get the F10.7 value
my $startday = "$1-$2-$3";
print "startday = $startday\n";

# Get the F10.7 value from the Param/f10.7 file
$_ = `grep $startday Param/f107.txt`;
/\s+(\d+\.\d+)\s+/;
my $f107 = $1;
print "F10.7 = $f107\n";

# Read last line
$_ = `tail -1 $IMF`;

s/\s*(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+).*/
$1\t\t\tiYear\n$2\t\t\tiMonth\n$3\t\t\tiDay\n$4\t\t\t\iHour\n$5\t\t\tiMinute\n$6\t\t\tiSecond/;

my $end = $_;
print "end=$end";

my $xL1;
if($IMF eq "L1.dat"){
    # Read x coordinate of the L1
    $_ = `grep -A1 SATELLITEXYZ $IMF | tail -1`;
    $xL1 = $1 if /^\s*([\d\.]+)/;

    print "xL1 = $xL1\n";
}

# get the average X position of the Wind satellite
my $file = "wind.dat";
my $xWind;
if(-f $file){
    print "Reading info from file=$file\n";
    # Read first line after start
    $_ = `grep -A1 START $file | tail -1`;
    # extract the X coordinate
    /(\d+\.\d+)/;
    $xWind = $1;

    # Read last line
    $_ = `tail -1 $file`;
    # extract the X coordinate
    /(\d+\.\d+)/;
    $xWind = 0.5*($xWind + $1);

    print "xWind=$xWind\n";
}

my $i; my $a;

@ARGV = glob("PARAM.in*");
print "Editing files @ARGV\n";
while(<>){
    if(/^\#STARTTIME/){
	# read in 6 lines
	for $i (1..6){$a = <>};
	chop;
	$_ .= $start;
    }
    if(/^\#ENDTIME/){
	# read in 6 lines
	for $i (1..6){$a = <>};
	chop;
	$_ .= $end;
    }
    # Set F10.7 flux in the line containinf "F107Flux"
    s/.*\s(F107)/$f107\t\t\t$1/i;

    # Switch off saving large plots and restart files
    s/^\#((?:SAVEPLOT)|(?:MAGNETOMETERGRID)|(?:SAVERESTART))\b/$1/ 
	if $NoPlot;

    # Change the name of the IMF file
    s/^IMF.dat/$IMF/;

    # Set grid size according to L1 position
    s/.*xMax$/$xL1\t\t\txMax/ if $xL1;
	
    # Set the extraction point
    s/.*xTest$/$xWind\t\t\txTest/ if $xWind;

    # For WIND comparison, remain in GSE coordinates
    s/VAR date GSM/VAR date/ if $xWind;
    print;
}

if($iRun){
    @ARGV = glob("job.long");
    print "Editing @ARGV with iRun=$iRun\n";
    while(<>){
	s/(PBS -l select=|SBATCH \-N )(\d\d)/$1.($2+$iRun)/e;
	print;
    }
}

exit 0;
#####################################################
sub print_help{

    print "
Change the #STARTTIME and #ENDTIME commands in the PARAM.in* 
files in the run directory based on the first and last time
shown in the IMF.dat or L1.dat file.

Also change the number of nodes in job.long by adding IRUN if present.

Usage: ./change_param.pl [-noplot] [-imf=IMFFILE] [-irun=IRUN]

-noplot      - do not save 2D plots (including magnetogram grids)
-imf=IMFFILE - use IMFFILE instead of the default L1.dat file
-irun=IRUN   - add IRUN to the number of nodes in job scripts
";
    exit 0;
}

