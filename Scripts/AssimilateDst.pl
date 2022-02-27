#!/usr/bin/perl -s

# Allow in-place editing
$^I = "~";

# Assimilate real-time Dst into ensemble simulation
my $Help = ($h or $help);
my $Verbose = ($v or $verbose);

use strict;

my $Event = ($ARGV[0] or "Event01");
my $DoneFile = "$Event.DONE";

die "$DoneFile is present\n" if -f $DoneFile;

my $year;
my $month;
my $day;
my $hour;
my $min;
my $sec;
my $msc;

my @Dir = glob("run?");
my $nDir = @Dir;

print "Event=$Event, nDir=$nDir, Ensemble=@Dir\n";

my $EventDir = "$Dir[0]/$Event";
die "Missing event directory $EventDir\n" unless -d $EventDir;

my $ParamFile = "$EventDir/PARAM.in";
die "Missing param file $ParamFile\n" unless -f $ParamFile;

my $EndFile = "$Event\.end";
my $endtime;     # actual end time of the even
my $oldendtime;  # time of previous assimilation
my $newendtime;  # time to the next assimilation

my $Restart = (-f $EndFile);

if($Restart){
    # Previous assimilation time
    $oldendtime = `grep -A6 '#ENDTIME' $ParamFile`;
}else{
    # Save original #ENDTIME from the PARAM.in file
    `grep -A7 '#ENDTIME' $ParamFile > $EndFile`;

    # Use the start time as the previous assimilation time
    $oldendtime = `grep -A6 '#STARTTIME' $ParamFile`;
    die "No #STARTTME found in $ParamFile\n" unless $oldendtime;
}
$oldendtime =~ s/\#ENDTIME\n//;
$oldendtime =~ s/\s+[a-zA-Z]+\n/ /g;
$oldendtime =~ s/ $//;
print "Old end time=$oldendtime\n";

# Find the next end time in the hourly Dst file
my $DstFile = "../Inputs/$Event/DstHourly.txt";

open(DST, $DstFile) or die "Could not open Dst file $DstFile\n";
while(<DST>){
    chop;
    next unless s/(\d\d\d\d \d\d).*(\d\d \d\d \d\d \d\d)/$1 $2/;
    $newendtime = $_;
    last if $newendtime gt $oldendtime;
}
close(DST);

# Final end time
$endtime = `grep -A6 '#ENDTIME' $EndFile`;
$endtime =~ s/\#ENDTIME\n//; $endtime =~ s/\s+[a-zA-Z]+\n/ /g;

if($oldendtime eq $newendtime or $newendtime gt $endtime){
    print "End of $DstFile or exceeded end time: use final end time\n";
    $newendtime = $endtime;
    print "This is the last run: touch $DoneFile\n";
    `touch $DoneFile`;
}

($day, $hour, $min, $sec) =
    ($newendtime =~ /^\d+ \d+ (\d+) (\d+) (\d+) (\d+)/);
print "New end time=$newendtime\n";
print "day=$day hour=$hour min=$min sec=$sec\n" if $Verbose;

# Perform restart
if($Restart){
    foreach my $Dir (@Dir){
	$EventDir = "$Dir/$Event";
	die "Missing event directory $EventDir\n" unless -d $EventDir;
	`cd $EventDir; ./Restart.pl`; # Create restart tree
	# Replace PARAM.in with PARAM.in.restart if needed
	$ParamFile = "$EventDir/PARAM.in";
	die "Missing param file $ParamFile\n" unless -f $ParamFile;
	my $ParamStart = "$ParamFile.start";
	next if -f $ParamStart; # already using restart PARAM file
	my $ParamRestart = "$ParamFile.restart";
	die "Missing restart param $ParamRestart\n" unless -f $ParamRestart;
	# Activate PARAM.in.restart
	print "mv $ParamFile $ParamStart; cp $ParamRestart $ParamFile\n"
	    if $Verbose;
	`mv $ParamFile $ParamStart; cp $ParamRestart $ParamFile`;
    }
}

# Put in new end time into all the PARAM.in files
@ARGV = glob("run?/$Event/PARAM.in");
print "All input files: @ARGV\n" if $Verbose;
my $end;
while(<>){
    $end=1 if /^#ENDTIME/;
    if($end){
	s/\d+(\s+iDay)/$day$1/;
	s/\d+(\s+iHour)/$hour$1/;
	s/\d+(\s+iMinute)/$min$1/;
	s/\d+(\s+iSecond)/$sec$1/;
	$end=0 if /iSecond/;
    }
    print;
}

exit 0;

    open(PARAM, $ParamFile)
	or die "Could not open parameter file $ParamFile\n";
    while(<PARAM>){
	if(/^#ENDTIME/){
	    $endtime = $_.
		<PARAM>.<PARAM>.<PARAM>.<PARAM>.<PARAM>.<PARAM>.<PARAM>;
	    last;
	}
    }
    die "Could not find #ENDTIME in $ParamFile\n" unless $endtime;

    print "Saving ENDTIME into $EndFile\n";
    open(OUT, ">$EndFile") or die "Could not open $EndFile\n";
    print OUT $endtime;
    close(OUT);
    $endtime =~ s/\s+[a-zA-Z]+\n/ /g;
    print "End time=$endtime\n";


my $ImfFile;
my $start;
my $L1  = 250*6830; # distance in km


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

