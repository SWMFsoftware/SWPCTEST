#!/usr/bin/perl -p
# Usage: pcn_to_cpcpn.pl pcn.log > CPCPN.txt
s/pcn/pcn cpcp/;
next unless /^[\d\.\+\-\s]+$/;
@a = split;
$cpcp = 29.28 - sin(2*3.1415926*($a[1]-1)/12+1.49) + 17.81*$a[-1];
s/\n/ $cpcp\n/;
