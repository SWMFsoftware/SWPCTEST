#!/usr/bin/perl -n
use strict;
if($. == 1){
    print "Produced from $ARGV
year mo dy hr mn sc msc BX BY BZ UX UY UZ RHO T
#START
";
}
my ($year,$month,$day,$hour,$min,$sec,$msc,$bx,$by,$bz,$lat,$lon,$rho,$ux,$T) = 
    /(\d\d\d\d)-(\d\d)-(\d\d) (\d\d):(\d\d):(\d\d)\.(\d\d\d)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)/;
printf ("%4d %2d %2d %2d %2d %2d %3d %10f.6 %10.6f %10.6f %10.5f 0.0 0.0 %10.5f %10.1f\n", 
	$year, $month, $day, $hour, $min, $sec, $msc, $bx, $by, $bz, $ux, $rho, $T)
    unless /NULL/;

