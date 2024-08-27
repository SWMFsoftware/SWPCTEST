#!/usr/bin/perl

# Combine ACE MAG and ACE SW files from SWPC into a single L1 file.
# For ACE Ux = -SwSpeed and Uy=Uz=0
# Usage:
#  ace_mag_sw_to_L1.pl MAGFILE SWFILE > L1FILE
#  emacs L1FILE # add header

use strict;
my $magfile = $ARGV[0];
my $swfile  = $ARGV[1];
open(MAG, $magfile) or die "Could not open $magfile\n";
my %data;
while(<MAG>){
    chop;
    # The [01] allows for both active and inactive status
    $data{$1} = $' if /^(\d\d\d\d\-\d\d\-\d\d \d\d:\d\d:[\d\.]+)\s+[01]\s+/;
}
close(MAG);
open(SW, $swfile) or die "Could not open $swfile\n";
while(<SW>){
    chop;
    # The [01] allows for both active and inactive status
    $data{$1} .= " \-$2 0.0 0.0 $4 $3"
	if /^(\d\d\d\d\-\d\d\-\d\d \d\d:\d\d:[\d\.]+)\s+[01]\s+([\d\.]+)\s+([\d\.]+)\s+([\d\.]+)/
	and $data{$1};
}
foreach(sort keys %data){
    my $data = $data{$_};
    next if $data =~ /NULL/ or $data !~ /\d\d\d$/;
    # Fix the date
    s/[\-\.:]/ /g;
    # print date and data
    print "$_ $data\n";
}
