#!/usr/bin/perl -s
&print_help if $h or $help;

# Allow in-place editing of the PARAM.in files
$^I = "";

use strict;

my $file = glob("L1.dat") or glob("IMF.dat");
die "Could not find IMF.dat or L1.dat\n" if not $file;

print "Reading info from file=$file\n";

# Read first line
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

