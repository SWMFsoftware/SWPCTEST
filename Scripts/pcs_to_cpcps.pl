#!/usr/bin/perl -p
# Usage: pcs_to_cpcps.pl pcs.log > CPCPS.txt
s/pcs/pcs cpcps/;
next unless /^[\d\.\+\-\s]+$/;
@a = split;
$pcs = $a[7]; $pcs = 0 if $pcs < 0;
$cpcp = 29.28 + 3.31*sin(2*3.1415926*($a[1]-1)/12+1.49) + 17.81*$pcs;
s/\n/ $cpcp\n/;
