#!/usr/bin/perl -s
&print_help if $h or $help;

# Allow in-place editing of the PARAM.in files
$^I = "";

use strict;

my $file = glob("L1.dat") or glob("IMF.dat");
die "Could not find IMF.dat or L1.dat\n" if not $file;

print "Reading info from file=$file\n";

# Read first line after start
$_ = `grep -A1 START $file | tail -1`;

# Create a proper date from first 6 elements
s/\s*(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+).*/
$1\t\t\tiYear\n$2\t\t\tiMonth\n$3\t\t\tiDay\n$4\t\t\t\iHour\n$5\t\t\tiMinute\n$6\t\t\tiSecond/;

my $start = $_;

print "start=$start";

$_ = `tail -1 $file`;

s/\s*(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+).*/
$1\t\t\tiYear\n$2\t\t\tiMonth\n$3\t\t\tiDay\n$4\t\t\t\iHour\n$5\t\t\tiMinute\n$6\t\t\tiSecond/;

my $end = $_;
print "end=$end";

# get the average X position of the Wind satellite
$file = "wind.dat";
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

Usage: ./change_param.pl
";
    exit 0;
}

