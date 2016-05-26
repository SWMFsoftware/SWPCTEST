#!/usr/bin/perl -s
&print_help if $h or $help;

my $NoPlot = $noplot;
my $IMF    = $imf or "L1.dat";

# Allow in-place editing of the PARAM.in files
$^I = "";

use strict;

die "Could not find IMF file $IMF\n" if not -e $IMF;

# make sure that SATELLITES.in file exists (may be empty)
`touch SATELLITES.in`;

print "Reading info from IMF file=$IMF\n";

# Read first line after start or the 3rd line
$_ = `grep -A1 START $IMF | tail -1`;

$_ = `head -3 $IMF | tail -1` if not $_;

# Create a proper date from first 6 elements
s/\s*(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+).*/
$1\t\t\tiYear\n$2\t\t\tiMonth\n$3\t\t\tiDay\n$4\t\t\t\iHour\n$5\t\t\tiMinute\n$6\t\t\tiSecond/;

my $start = $_;

print "start=$start";

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

    # Switch off saving large plots and restart files
    s/^\#(SAVEPLOT|MAGNETOMETERGRID|SAVERESTART)\b/$1/ 
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

exit 0;
#####################################################
sub print_help{

    print "
Change the #STARTTIME and #ENDTIME commands in the PARAM.in* 
files in the run directory based on the first and last time
shown in the IMF.dat or L1.dat file.

Usage: ./change_param.pl [-noplot] [-imf=IMFFILE]

-noplot      - do not save 2D plots (including magnetogram grids)
-imf=IMFFILE - use IMFFILE instead of the default L1.dat file
";
    exit 0;
}

