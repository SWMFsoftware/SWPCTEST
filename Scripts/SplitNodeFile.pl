#!/usr/bin/perl
# Split the NODEFILE among multiple directories.
#
# Usage: SplitNodeFile NODEFILE DIR1 DIR2 ...
#
# The new files will be DIR1/hosts DIR2/hosts ...

use strict;
my $NodeFile = shift;

open(NODE, $NodeFile) or die "Could not open node file $NodeFile\n";
my @Core = <NODE>;
close(NODE);
my $nCore = @Core;
die "No cores defined in node file $NodeFile\n" unless $nCore;

my @Dir = @ARGV;
die "No directories were passed as arguments\n" unless @Dir;
my $nDir = @Dir;
my $nCore1 = int($nCore/$nDir);

print "nCore=$nCore / nDir=$nDir -> nCore1=$nCore1\n";

die "Insufficient number of cores\n" unless $nCore1;

for my $iDir (0..$nDir-1){
    my $HostFile = "$Dir[$iDir]/hosts";
    open(OUT, ">$HostFile") or die "Could not open host file $HostFile\n";
    print OUT @Core[$iDir*$nCore1..($iDir+1)*$nCore1-1];
    close(OUT);
}

exit 0;
