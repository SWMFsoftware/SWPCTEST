#!/usr/bin/perl -p
# Convert PC indexes to CPCP for north and south
# Usage: pc_to_cpcp.pl pcn_pcs.txt > CPCP.txt
s/pcn\s+pcs/pcn pcs cpcpn cpcps/i;
next unless /^[\d\.\+\-\s]+$/;
@a = split;
$month = $a[1];
$dmonth= 3.31*sin(2*3.1415926*($month-1)/12+1.49);
if($a[5] < 998.0){
    $pcn = $a[5]; $pcn = 0 if $pcn < 0;
}
if($a[6] < 998.0){
    $pcs = $a[6]; $pcs = 0 if $pcs < 0;
}
$cpcpn = 29.28 - $dmonth + 17.81*$pcn; 
$cpcps = 29.28 + $dmonth + 17.81*$pcs; 
#s/\n/ $cpcpn $cpcps\n\n/m;
chop;
$_ .= sprintf("  %10.1f  %10.1f\n", $cpcpn, $cpcps);
