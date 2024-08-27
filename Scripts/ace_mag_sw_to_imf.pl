#!/usr/bin/perl

# Convert ACE MAG and SW data into IMF format.
# Uy and Uz are assumed to be 0.
# Usage:
#  ace_mag_sw_to_imf.pl MAGFILE SWFILE > IMFFILE
#  emacs IMFFILE # add header

use strict;
my $magfile = $ARGV[0];
my $swfile  = $ARGV[1];
open(MAG, $magfile) or die "Could not open $magfile\n";
my %data;
while(<MAG>){
    chop;
    $data{$1} = $' if /^(\d\d\d\d\-\d\d\-\d\d \d\d:\d\d:[\d\.]+)\s+[1]\s+/;
}
close(MAG);
open(SW, $swfile) or die "Could not open $swfile\n";
while(<SW>){
    chop;
    $data{$1} .= " \-$2 0.0 0.0 $4 $3"
	if /^(\d\d\d\d\-\d\d\-\d\d \d\d:\d\d:[\d\.]+)\s+[1]\s+([\d\.]+)\s+([\d\.]+)\s+([\d\.]+)/
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
