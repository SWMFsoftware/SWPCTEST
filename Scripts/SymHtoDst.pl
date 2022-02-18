#!/usr/bin/perl

# Convert minute resolution SYMH to hour resolution Dst
# Average SYMH observations of the past hour

use strict;

# Date in integer format
my $year; 
my $month;
my $day;
my $hour;
my $min;
my $sec;
my $msc;

my $ImfFile  = "IMF.dat";
my $L1 = 250*6830; # L1 distance in km
my $ux;            # solar wind speed in km/s

my $SymhFile = "Dst.txt";
my $DstFile  = "DstHourly.txt";

my $symh;  # SYM-H (minute resolution)
my $nsymh; # number of SYM-H observations
my $dst;   # Dst (hour resolution)

my $hoursimold; # previous simulation time in hours
my %hoursim;    # propagated IMF time in hours for a given round date+hour

open(IMF, $ImfFile) or die "Could not open IMF file $ImfFile\n";
while(<IMF>){
    ($year, $month, $day, $hour, $min, $sec, $msc, $ux) =
	/^\s*(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+\S+\s+\S+\s+\S+\s+(\S+)/;

    next unless $ux;
    $ux = abs($ux);
    my $hoursim = $hour + $min/60.0 + $sec/3600.0;
    my $propagate = ($L1/$ux)/3600.0; # propagation time in hours
    my $hourobs = $hoursim - $propagate; # real time of IMF observation
    $hourobs    = int($hourobs+1); # integer hour of observation
    my $dayobs  = $day;

    # Fix the observation date if needed
    if($hourobs > 23){
	$dayobs++;
	$hourobs -= 24;
    }
    
    # print "hoursim=$hoursim $propagate hourobs=$hourobs hourint=$hourint\n";
    
    # Convert to strings
    $dayobs  = sprintf("%02d", $dayobs);
    $hourobs = sprintf("%02d", $hourobs);

    # fix the simulation time if going through midnight
    $hoursim += 24 while $hoursim < $hoursimold;
    $hoursimold = $hoursim;
    
    # store the information
    $hoursim{"$year$month$dayobs$hourobs"} = sprintf("%8.2f", $hoursim)." $day $hour $min $sec";
 
}
close(IMF);

## Debug
#foreach my $date (sort keys %hoursim){
#    print "$date: ", $hoursim{$date}, "\n";
#}

open(SYMH, $SymhFile) or die "Could not open input SYMH file $SymhFile\n";
open(DST, ">$DstFile") or die "Could not open output Dst file $DstFile\n";
print DST "Hourly Dst obtained from minute resolution SYMH and corresponding simulation time\n";
print DST "year mo dy hr dst hours_sim dy_sim hr_sim mn_sim sc_sim\n";
while(<SYMH>){
    ($year, $month, $day, $hour, $min, $symh) =
	/^\s*(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+\d+\s+\d+\s+(\S+)/;
    next unless $symh;
    $nsymh++;
    $dst += $symh;
    if($min == 0){
	# Calculate Dst for round hours 
	$dst /= $nsymh;
	print DST "$year $month $day $hour ",
	    sprintf("%8.2f %s\n", $dst, $hoursim{"$year$month$day$hour"});
	$nsymh = 0;
	$dst   = 0;
    }
}
close(SYMH);
close(DST);

