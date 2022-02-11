#!/usr/bin/perl

# Convert minute resolution SYMH to hour resolution Dst
# Average SYMH observations of the past hour


use strict;

my $SymhFile = "Dst.txt";
my $DstFile  = "DstHourly.txt";

my $year;
my $month;
my $day;
my $hour;
my $min;
my $sec;
my $msc;
my $symh; # SYM-H (minute resolution)
my $nsymh; # number of SYM-H observations
my $dst;  # Dst (hour resolution)

open(SYMH, $SymhFile) or die "Could not open input SYMH file $SymhFile\n";
open(DST, ">$DstFile") or die "Could not open output Dst file $DstFile\n";
print DST "Hourly Dst obtained from minute resolution SYMH\n";
print DST "year mo dy hr dst\n";
while(<SYMH>){
    ($year, $month, $day, $hour, $min, $symh) =
	/^\s*(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+\d+\s+\d+\s+(\S+)/;
    next unless $symh;
    $nsymh++;
    $dst += $symh;
    if($min == 0){
	# Calculate Dst for round hours
	$dst /= $nsymh;
	print DST "$year $month $day $hour ",sprintf("%8.2f", $dst),"\n";
	$nsymh = 0;
	$dst   = 0;
    }
}
close(SYMH);
close(DST);

