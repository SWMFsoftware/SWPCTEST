#!/usr/bin/perl -s

# Allow in-place editing
$^I = "~";

# Assimilate real-time Dst into ensemble simulation
my $Help = ($h or $help);
my $Verbose = ($v or $verbose);
my $Reset = ($r or $reset);

use strict;

my $Event = ($ARGV[0] or "Event01");
my @Dir = glob("run[1-9]");
my $nDir = @Dir;
die "There are not enough run directories: @Dir\n" unless $nDir > 1;

print "Event=$Event, nDir=$nDir, Ensemble=@Dir\n";

my $ParamOrig = "$Event\.PARAM.in";   # File storing the original PARAM.in
my $DoneFile = "$Event.DONE";

if($Reset){
    die "Could not find $ParamOrig\n" unless -f $ParamOrig;
    foreach my $Dir (@Dir){
	print "cp $ParamOrig $Dir/$Event/PARAM.in\n";
	`cp $ParamOrig $Dir/$Event/PARAM.in`;
    }
    print "rm $DoneFile $ParamOrig\n";
    unlink($DoneFile, $ParamOrig);
    print "Finished resetting $Event\n";
    exit 0;
}

die "$DoneFile is present\n" if -f $DoneFile;


# Composition parameters for the different run
my $FractionH = 0.7;
my $dFraction = (1 - $FractionH)/$nDir;

my $EventDir  = "$Dir[0]/$Event";     # e.g. run1/Event04
my $ParamFile = "$EventDir/PARAM.in"; # e.g. run1/Event04/PARAM.in
my $olddatime;  # time of previous assimilation
my $newdatime;  # time to the next assimilation
my $endtime;     # actual end time of the event

# If ParamOrig exists, we are doing a restart
my $Restart = (-f $ParamOrig);

# Get previous DA time (if any) and save $ParamOrig (if not yet)
if($Restart){
    # Previous assimilation time
    $olddatime = `grep -A6 '#ENDTIME' $ParamFile`;
}else{
    # Copy original PARAM file
    `cp $ParamFile $ParamOrig`;

    # Use the start time as the previous assimilation time
    $olddatime = `grep -A6 '#STARTTIME' $ParamFile`;
    die "No #STARTTME found in $ParamFile\n" unless $olddatime;
}
$olddatime =~ s/\#(START|END)TIME\n//;
$olddatime =~ s/\s+[a-zA-Z]+\n/ /g;
$olddatime =~ s/ $//;
print "Old DA time=$olddatime\n";

# Perform restart related manipulations of PARAM.in files
foreach my $Dir (@Dir){
    $EventDir = "$Dir/$Event";
    die "Missing event directory $EventDir\n" unless -d $EventDir;
    $ParamFile = "$EventDir/PARAM.in";
    die "Missing param file $ParamFile\n" unless -f $ParamFile;
    if($Restart){
	my $RestartOutFile = "$EventDir/RESTART.out";
	if(not -f $RestartOutFile){
	    `touch $DoneFile`;
	    die "Could not find $RestartOutFile\n";
	}
	my $RestartDir = "RESTART_$olddatime"; $RestartDir =~ s/ /_/g;
	`cd $EventDir; ./Restart.pl $RestartDir`; # Create restart tree
	# Replace PARAM.in with PARAM.in.restart if needed
	next if `grep restartIN $ParamFile`; # already using restart PARAM file
	my $ParamRestart = "$ParamFile.restart";
	die "Missing restart param $ParamRestart\n" unless -f $ParamRestart;
	# Activate PARAM.in.restart
	print "cp $ParamRestart $ParamFile\n" if $Verbose;
	`cp $ParamRestart $ParamFile`;
    }
}

# Find the next end time in the hourly Dst file
my $DstFile = "../Inputs/$Event/DstHourly.txt";

open(DST, $DstFile) or die "Could not open Dst file $DstFile\n";
while(<DST>){
    chop;
    next unless s/(\d\d\d\d \d\d).*(\d\d \d\d \d\d \d\d)/$1 $2/;
    $newdatime = $_;
    last if $newdatime gt $olddatime;
}
close(DST);

# Final end time
$endtime = `grep -A6 '#ENDTIME' $ParamOrig`;
$endtime =~ s/\#ENDTIME\n//; $endtime =~ s/\s+[a-zA-Z]+\n/ /g;

if($olddatime eq $newdatime or $newdatime gt $endtime){
    print "End of $DstFile or exceeded end time: use end time\n";
    $newdatime = $endtime;
    print "This is the last run: touch $DoneFile\n";
    `touch $DoneFile`;
}

my ($day, $hour, $min, $sec) =
    ($newdatime =~ /^\d+ \d+ (\d+) (\d+) (\d+) (\d+)/);
print "New DA time=$newdatime\n";
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
    s/^SAVERESTART\b/\#SAVERESTART/;
    $_ = "T\t\t\tDoSaveRestart\n"      if /DoSaveRestart/;
    $_ = "-1\t\t\tDnSaveRestart\n"     if /DnSaveRestart/;
    $_ = "10 hour\t\t\tDtSaveRestart\n" if /DtSaveRestart/;

    $_ = "#MAKEDIR\nF\t\t\tDoMakeDir\n\n$1\n" if /(RESTARTOUTDIR)/;

    # Set the FractionH and FractionO in the COMPOSITION command
    $_ = sprintf("%5.3f\t\t\tFractionH\n", $FractionH) if /FractionH/;
    if(/FractionO/){
	$_ = sprintf("%5.3f\t\t\tFractionO\n", 1-$FractionH);
	$FractionH += $dFraction; $FractionH = 1 if $FractionH > 1.0;
    }
    
    print;
}

exit 0;

