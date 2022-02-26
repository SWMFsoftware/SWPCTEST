#!/usr/bin/perl

# Assimilate real-time Dst into ensemble simulation


use strict;

my $ImfFile = "IMF.dat";
my $DstFile = "DstHourly.txt";

my $L1  = 250*6830; # distance in km

my $year;
my $month;
my $day;
my $hour;
my $min;
my $sec;
my $msc;

my $starttime; # Start time: "year month day hour"

my $dst;  # Dst (hourly resolution)
my $ux;   # solar wind speed

my $hour0 = -1; # starting hour
my $hours = -1; # number of hours since first day 00UT
my @dst;        # Dst as a function of $hours

open(DST, $DstFile) or die "Could not open DST file $DstFile\n";
while(<DST>){
    ($year, $month, $day, $hour, $dst) =
	/^\s*(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\S+)/;
    next unless $dst;
    $starttime = "$year $month $day $hour" if not $starttime;
    if($hours < 0){
	$hour0 = $hour;
	$hours = $hour;
    }else{
	$hours++;
    }
    $dst[$hours] = $dst;
}
close(DST);

my $hour1 = $hours;

print "Dst read:\n";
for $hour ($hour0..$hour1){
    print "$hour $dst[$hour]\n";
}

$hours = $hour0;

open(IMF, $ImfFile) or die "Could not open IMF file $ImfFile\n";
while(<IMF>){
    ($year, $month, $day, $hour, $min, $sec, $msc, $ux) =
	/^\s*(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+\S+\s+\S+\s+\S+\s+(\S+)/;

    $start = 1 if "$year $month $day $hour" eq $starttime;
    next unless $start;
    
    $ux = abs($ux);
    
    my $propagate = ($L1/$ux); # propagation time in seconds
    my $hourpast = (60*$min + $sec + $msc/1000); # number of seconds since last round hour
    my $diff = ($hourpast-$propagate)/3600;

    print "date=$year $month $day T $hour:$min:$sec, $msc, ux=$ux\n";
    print "hourpast = $hourpast, propagate=$propagate, difference [hr]=$diff\n";

    next if $diff < 0 and $diff > -1;
    
    print "Assimilate Dst\n";
    
}
close(IMF);

