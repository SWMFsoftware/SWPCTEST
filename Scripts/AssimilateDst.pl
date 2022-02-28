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

my @Dir = glob("run?");
my $nDir = @Dir;

die "There are not enough run directories: @Dir\n" unless $nDir > 1;

print "Event=$Event, nDir=$nDir, Ensemble=@Dir\n";

# Composition parameters for the different run
my $FractionH = 0.7;
my $dFraction = (1 - $FractionH)/$nDir;

my $EventDir;    # e.g. run2/Event04
my $ParamFile;   # e.g. run2/Event04/PARAM.in
my $oldendtime;  # time of previous assimilation
my $newendtime;  # time to the next assimilation
my $endtime;     # actual end time of the event
my $EndFile = "$Event\.end";  # File storing the end time of event

my $Restart = (-f $EndFile);

# Perform restart related manipulations of PARAM.in files
foreach my $Dir (@Dir){
    $EventDir = "$Dir/$Event";
    die "Missing event directory $EventDir\n" unless -d $EventDir;
    $ParamFile = "$EventDir/PARAM.in";
    die "Missing param file $ParamFile\n" unless -f $ParamFile;
    my $ParamStart = "$ParamFile.start";
    if($Restart){
	my $RestartOutFile = "$EventDir/RESTART.out";
	if(not -f $RestartOutFile){
	    `touch $DoneFile`;
	    die "Could not find $RestartOutFile\n";
	}
	my $RestartDir = "RESTART_$oldendtime"; $RestartDir =~ s/ /_/g;
	`cd $EventDir; ./Restart.pl $RestartDir`; # Create restart tree
	# Replace PARAM.in with PARAM.in.restart if needed
	next if -f $ParamStart; # already using restart PARAM file
	my $ParamRestart = "$ParamFile.restart";
	die "Missing restart param $ParamRestart\n" unless -f $ParamRestart;
	# Activate PARAM.in.restart
	print "mv $ParamFile $ParamStart; cp $ParamRestart $ParamFile\n"
	    if $Verbose;
	`mv $ParamFile $ParamStart; cp $ParamRestart $ParamFile`;
    }else{
	# Restore original param file if redoing the run
	print "mv $ParamStart $ParamFile\n" if $Verbose and -f $ParamStart;
	`mv $ParamStart $ParamFile` if -f $ParamStart;
    }
}

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
$oldendtime =~ s/\#(START|END)TIME\n//;
$oldendtime =~ s/\s+[a-zA-Z]+\n/ /g;
$oldendtime =~ s/ $//;
print "Old DA time=$oldendtime\n";

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

my ($day, $hour, $min, $sec) =
    ($newendtime =~ /^\d+ \d+ (\d+) (\d+) (\d+) (\d+)/);
print "New DA time=$newendtime\n";
print "day=$day hour=$hour min=$min sec=$sec\n" if $Verbose;

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

    # Make sure normal restart is saved at the end of the run
    s/^#RESTARTOUTDIR\b/RESTARTOUTDIR/;
    s/^SAVERESTART\b/\#SAVERESTART/;
    $_ = "T\t\t\tDoSaveRestart\n"      if /DoSaveRestart/;
    $_ = "-1\t\t\tDnSaveRestart\n"     if /DnSaveRestart/;
    $_ = "10 hour\t\t\tDtSaveRestart\n" if /DtSaveRestart/;

    # Set the FractionH and FractionO in the COMPOSITION command
    $_ = sprintf("%5.3f\t\t\tFractionH\n", $FractionH) if /FractionH/;
    if(/FractionO/){
	$_ = sprintf("%5.3f\t\t\tFractionO\n", 1-$FractionH);
	$FractionH += $dFraction; $FractionH = 1 if $FractionH > 1.0;
    }
    
    print;
}

exit 0;

