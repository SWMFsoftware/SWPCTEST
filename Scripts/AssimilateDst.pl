#!/usr/bin/perl -s

# Allow in-place editing
$^I = "~";

# Assimilate real-time Dst into ensemble simulation
my $Help = ($h or $help);
my $Verbose = ($v or $verbose);
my $Reset = ($r or $reset);

use strict;

my $Event = ($ARGV[0] or "Event01");

die "Incorrect event name $Event\n" unless $Event =~ /^Event\d+$/;

my @Dir = glob("run[1-9]");
my $nDir = @Dir;
die "There are not enough run directories: @Dir\n" unless $nDir > 1;

print "Event=$Event, nDir=$nDir, Ensemble=@Dir\n";

my $ParamOrig = "$Event/PARAM.in";   # File storing the original PARAM.in
my $LastFile = "$Event/LAST";
my $PlotDir = "$Event/GM/IO2";

if($Reset){
    die "Could not find $ParamOrig\n" unless -f $ParamOrig;
    foreach my $Dir (@Dir){
	my $EventDir = "$Dir/$Event";
	print "cp $ParamOrig $EventDir/PARAM.in\n";
	`cp $ParamOrig $EventDir/PARAM.in`;
	print "rm -rf $EventDir/RESTART* $Dir/$PlotDir/*\n";
	`rm -rf $EventDir/RESTART* $Dir/$PlotDir/*`;
    }
    print "rm -rf $Event/\n";
    `rm -rf $Event`;
    print "Finished resetting $Event\n";
    exit 0;
}

die "$LastFile is present\n" if -f $LastFile;

# Create directory for the ensemble
`mkdir -p $PlotDir` unless -d $PlotDir;

# Composition parameters for the different runs
my $FractionH = 0.7;
my $dFraction = (1 - $FractionH)/$nDir;

my $EventDir  = "$Dir[0]/$Event";     # e.g. run1/Event04
my $ParamFile = "$EventDir/PARAM.in"; # e.g. run1/Event04/PARAM.in
my $olddatime;  # time of previous assimilation
my $newdatime;  # time to the next assimilation
my $endtime;    # end time of the event

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

# Name of the restart directory is based on the old DA time
my $RestartDir = "RESTART_$olddatime"; $RestartDir =~ s/ /_/g;

sleep 60;

# Perform restart related manipulations of PARAM.in files
foreach my $Dir (@Dir){
    $EventDir = "$Dir/$Event";
    die "Missing event directory $EventDir\n" unless -d $EventDir;
    $ParamFile = "$EventDir/PARAM.in";
    die "Missing param file $ParamFile\n" unless -f $ParamFile;
    if($Restart){
	my $RestartOutFile = "$EventDir/RESTART.out";
	if(not -f $RestartOutFile){
	    warn "Could not find $RestartOutFile\n";
	    next;
	}
        # Create restart tree
	`cd $EventDir; ./Restart.pl $RestartDir`; 
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

my $ObsTimeNew; # new observation time
my $ObsTime;    # old observation time
my $ObsDstNew;  # new observed hourly Dst
my $ObsDst;     # old observed hourly Dst
open(DST, $DstFile) or die "Could not open Dst file $DstFile\n";
while(<DST>){
    # Match: year mo dy hr dst_sm hours_sim dy_sim hr_sim mn_sim sc_sim
    next unless 
	/^(\d\d\d\d \d\d) (\d\d \d\d)\s+(\S+)\s+\S+ (\d\d \d\d \d\d \d\d)$/;
    $newdatime = "$1 $4";
    if($newdatime gt $olddatime){
	print "olddatime=$olddatime,\n";
	print "newdatime=$newdatime,\n";
	# Found new DA possibility
	print "ObsTime=$ObsTime, $ObsTimeNew, ObsDst=$ObsDst, $ObsDstNew\n";
	last;
    }
    # The observation time is from the previous hour
    $ObsTime    = $ObsTimeNew;
    $ObsDst     = $ObsDstNew;
    $ObsDstNew  = $3;
    $ObsTimeNew = "$1 $2";
}
close(DST);

if($ObsTime){
    # Perform data assimilation: select the run with best simulated Dst
    # The run in $BestEventDir has the best Dst $BestDst (closest to $ObsDst)
    # Only the last log file contributes, the rest is coming from the ensemble
    my $BestEventDir;
    my $BestLog;
    my $BestDst = 1e6;

    # Read SYM-H from log files in the assimilated directory
    my $nEnsembleDst; # number of SYM-H values used for Dst
    my $EnsembleDst;  # total of SYM-H used for Dst
    my @LogFile;
    @LogFile = glob("$PlotDir/log*.log");
    if(@LogFile){
	my $LogFile = @LogFile[-1];
	my @EnsembleDst = `grep \"$ObsTime\" $LogFile`;
	$nEnsembleDst = @EnsembleDst;
	foreach (@EnsembleDst){
	    /(\S+)\s+\S+$/
		or die "Could not read line from $PlotDir/log*\n$.:$_";
	    $EnsembleDst += $1;
	}
	print "nEnsembleDst=$nEnsembleDst in $LogFile\n";
	print "EnsembleDst=", $EnsembleDst/$nEnsembleDst,"\n"
	    if $nEnsembleDst;
    }
    # Read SYM-H from the last log file of each ensemble member
    for my $Dir (@Dir){
	my $RunPlotDir = "$Dir/$PlotDir";
	my @LogFile = glob("$RunPlotDir/log*.log");
	next unless @LogFile; # possibly failed run
	my $LogFile = @LogFile[-1];
	my @SimDst = `grep "$ObsTime" $LogFile`;
	my $nSimDst = @SimDst;
	next unless $nSimDst; # possibly failed run
	my $SimDst;
	foreach (@SimDst){
	    /(\S+)\s+\S+$/ or 
		die "Could not read line from $RunPlotDir/log*\n$.:$_";
	    $SimDst += $1;
	}
	my $Dst = ($EnsembleDst + $SimDst)/($nEnsembleDst + $nSimDst);
	print 
	    "$LogFile: nSimDst=$nSimDst SimDst=", $SimDst/$nSimDst, 
	    ", Dst=$Dst\n";
	if(abs($Dst - $ObsDst) < abs($BestDst - $ObsDst)){
	    # Store this run as best
	    $BestEventDir = "$Dir/$Event";
	    $BestLog = $LogFile;
	    $BestDst = $Dst;
	}
    }
    die "Could not identify BestEventDir\n" if not $BestEventDir;

    # Copy the best log file into the ensemble
    # !!! should copy all output created in the last run !!!
    print "cp $BestLog $PlotDir/ # BestDst=$BestDst\n";
    `cp $BestLog $PlotDir`;
    my $BestIndex = $BestLog; $BestIndex =~ s/log_/geoindex_/;
    `cp $BestIndex $PlotDir` if -f $BestIndex;
    my $BestMag = $BestLog; 
    $BestMag =~ s/log_/magnetometers_/; $BestMag =~ s/log$/mag/;
    `cp $BestMag $PlotDir` if -f $BestMag;

    # Link all the restarts to the best one
    for my $Dir (@Dir){
	my $EventDir = "$Dir/$Event";
	print 
	    "cd $EventDir; ./Restart.pl -i ../../$BestEventDir/$RestartDir\n";
	`cd $EventDir; ./Restart.pl -i ../../$BestEventDir/$RestartDir`;
    }
}

# Final end time
$endtime = `grep -A6 '#ENDTIME' $ParamOrig`;
$endtime =~ s/\#ENDTIME\n//; $endtime =~ s/\s+[a-zA-Z]+\n/ /g;

if($olddatime eq $newdatime or $newdatime ge $endtime){
    print "End of $DstFile or exceeded end time: use end time\n";
    $newdatime = $endtime;
    print "This is the last run: touch $LastFile\n";
    `touch $LastFile`;
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

    $_ = "#MAKEDIR\nF\t\t\tDoMakeDir\n\n$1\n" if /^\#(RESTARTOUTDIR)/;

    # Set the FractionH and FractionO in the COMPOSITION command
    $_ = sprintf("%5.3f\t\t\tFractionH\n", $FractionH) if /FractionH/;
    if(/FractionO/){
	$_ = sprintf("%5.3f\t\t\tFractionO\n", 1-$FractionH);
	$FractionH += $dFraction; $FractionH = 1 if $FractionH > 1.0;
    }
    
    print;
}

exit 0;

