#!/usr/bin/perl -p
# Usage: pcn_to_cpcpn.pl pcn.log > CPCPN.txt
s/pcn/pcn cpcpn/;
next unless /^[\d\.\+\-\s]+$/;
@a = split;
$pcn = $a[7]; $pcn = 0 if $pcn < 0;
$cpcp = 29.28 - 3.31*sin(2*3.1415926*($a[1]-1)/12+1.49) + 17.81*$pcn;
s/\n/ $cpcp\n/;
