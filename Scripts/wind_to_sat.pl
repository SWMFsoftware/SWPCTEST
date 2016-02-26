#!/usr/bin/perl -n
if(/^\#dd-mm-yyyy/){
    print "
Produced from $ARGV
year mo dy hr mn sc msc x y z bx by bz
#START
";
}elsif(not /^\#/){
    ($day,$month,$year,$hour,$min,$sec,$msc,$bx,$by,$bz,$x,$y,$z) = 
	/(\d\d)-(\d\d)-(\d\d\d\d) (\d\d):(\d\d):(\d\d)\.(\d\d\d)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)/;
    print "$year $month $day $hour $min $sec $msc\t$x\t$y\t$z\t$bx\t$by\t$bz\n";
};
