#!/usr/bin/perl -s

# Allow in-place editing
$^I = "~";

# Assimilate real-time Dst into ensemble simulation
my $Help       = ($h or $help);
my $Verbose    = ($v or $verbose);
my $Reset      = ($r or $reset);
my $Sleep      = ($s or $sleep);
my $Predict    = ($p or $predict);
my $Collect    = ($c or $collect);
my $FractionH  = ($F or $Fraction);
my $dFracH     = ($dF or $dFraction);
my $dDst       = ($dD or $dDst or 10);
my $CpcpFactor = ($C or $CPCP);

use strict;

# Valid range of FractionH parameter
my $MinFracH = 0.65;
my $MaxFracH = 0.95;
my $FracH;       # Current value
my $BestDst;     # Current simulation Dst

$FractionH = 0.7 unless $FractionH or $dFracH or $CpcpFactor; # default value

die "Invalid value for -F=$FractionH\n"
    if $FractionH < 0 or $FractionH >= 1;
die "Invalid value for -C=$CpcpFactor\n" 
    if $CpcpFactor < 0 or $CpcpFactor >= 1;

&print_help if $Help;

my $Event = ($ARGV[0] or "Event01");

die "Incorrect event name $Event\n" unless $Event =~ /^Event\d+$/;

my @Dir = glob("run[1-9]");
my $nDir = @Dir;
die "There are not enough run directories: @Dir\n" unless 
    $nDir > 1 or ($nDir==1 and ($Reset or $dFracH));

print "Event=$Event, nDir=$nDir, Ensemble=@Dir\n";

&collect_data if $Collect;

my $ParamOrig = "run/$Event/PARAM.in";   # File storing the original PARAM.in
my $LastFile = "run/$Event/LAST";
my $PlotDir = "$Event/GM/IO2";

if($Reset){
    die "Could not find $ParamOrig\n" unless -f $ParamOrig;
    foreach my $Dir (@Dir){
	my $EventDir = "$Dir/$Event";
	&shell("cp $ParamOrig $EventDir/PARAM.in");
	&shell("rm -rf $EventDir/RESTART* $EventDir/??/plots/*");
    }
    &shell("rm -rf run/$Event");
    print "Finished resetting $Event\n";
    exit 0;
}

die "$LastFile is present\n" if -f $LastFile;

# Create plot directory for the ensemble
&shell("mkdir -p run/$PlotDir") unless -d "run/$PlotDir";

# H-O composition: H fraction goes from $FractionH to (1-$FractionH)/$nDir
my $dFraction = (1 - $FractionH)/$nDir;

# CPCP parameter goes from $CpcpFactor to 1/$CpcpFactor with ratios $CpcpRatio
my $CpcpRatio;
$CpcpRatio = $CpcpFactor**(-2/($nDir-1)) if $CpcpFactor and $nDir > 1;

print "FractionH=$FractionH, dFraction=$dFraction\n" 
    if $FractionH and $Verbose;
print "CpcpFactor=$CpcpFactor, CpcpRatio=$CpcpRatio\n" 
    if $CpcpRatio and $Verbose;

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
    $olddatime = &shell("grep -A6 '#ENDTIME' $ParamFile");
}else{
    # Copy original PARAM file
    &shell("cp $ParamFile $ParamOrig");

    # Use the start time as the previous assimilation time
    $olddatime = &shell("grep -A6 '#STARTTIME' $ParamFile");
    die "No #STARTTME found in $ParamFile\n" unless $olddatime;
}
$olddatime =~ s/\#(START|END)TIME\n//;
$olddatime =~ s/\s+[a-zA-Z]+[\s\n]+/ /g;
$olddatime =~ 
    s/(\d\d\d\d) (\d\d) (\d\d) (\d\d) (\d\d) (\d\d).*/$1$2$3\-$4$5$6/;
print "Old DA time=$olddatime\n";

# Name of the restart directory tree
my $RestartDir = "RESTART";

sleep $Sleep;

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
        # Create restart tree (-W allows overwriting previous tree)
	&shell("cd $EventDir; ./Restart.pl -W $RestartDir");

	# Replace PARAM.in with PARAM.in.restart only if needed
	next if &shell("grep restartIN $ParamFile");

	my $ParamRestart = "$ParamFile.restart";
	die "Missing restart param $ParamRestart\n" unless -f $ParamRestart;
	# Activate PARAM.in.restart
	&shell("cp $ParamRestart $ParamFile");
    }
}

# Find the next end time in the hourly Dst file
my $DstFile = "../Inputs/$Event/DstHourly.txt";

my $ObsTimeNew; # new observation time
my $ObsTime;    # old observation time
my $ObsDst;     # observed hourly Dst
open(DST, $DstFile) or die "Could not open Dst file $DstFile\n";
while(<DST>){
    # Match: year mo dy hr dst_sm hours_sim dy_sim hr_sim mn_sim sc_sim
    next unless 
	/^(\d\d\d\d) (\d\d) (\d\d) (\d\d)\s+(\S+)\s+\S+ (\d\d) (\d\d) (\d\d) (\d\d)$/;
    if($Predict){
	$newdatime = "$1$2$3-$4"."0000";
    }else{
	$newdatime = "$1$2$6-$7$8$9";
    }
    if($newdatime gt $olddatime){
	print "olddatime=$olddatime,\n" if $Verbose;
	print "newdatime=$newdatime,\n" if $Verbose;
	# Found new DA possibility
	print "ObsTime=$ObsTime, $ObsTimeNew, ObsDst=$ObsDst\n" if $Verbose;
	last;
    }
    # The observation time is from the previous hour
    $ObsTime    = $ObsTimeNew;
    $ObsDst     = $5; # Dst for the hour prior 
    $ObsTimeNew = "$1 $2 $3 $4";
}
close(DST);

if($ObsTime){
    # Perform data assimilation: select the run with best simulated Dst
    # The run in $BestEventDir has the best Dst $BestDst (closest to $ObsDst)
    # Only the last log file contributes, the rest is coming from the ensemble
    my $BestEventDir;
    my $BestLog;
    $BestDst = 1e6;

    # Read SYM-H from the log files of each ensemble member
    for my $Dir (@Dir){
	my $RunPlotDir = "$Dir/$PlotDir";
	my @SimDst = &shell_array("grep '$ObsTime' $RunPlotDir/log*.log");
	my $nSimDst = @SimDst;
	next unless $nSimDst; # possibly failed run
	# Add up SYM-H values for the hour of observations
	my $SimDst;
	foreach (@SimDst){
	    /(\S+)\s+\S+$/ or 
		die "Could not read line from $RunPlotDir/log*\n$.:$_";
	    $SimDst += $1;
	}
	my $Dst = $SimDst/$nSimDst;
	print "$Dir: nSimDst=$nSimDst, Dst=$Dst\n";
	if(abs($Dst - $ObsDst) < abs($BestDst - $ObsDst)){
	    # Store this run as best
	    $BestEventDir = "$Dir/$Event";
	    $BestDst = $Dst;
	}
    }
    die "Could not identify BestEventDir\n" if not $BestEventDir;

    # Copy all output files from BestEventDir into the ensemble
    print "BestEventDir=$BestEventDir, BestDst=$BestDst, "
	. "ObsDst=$ObsDst, ObsTime=$ObsTime\n";
    my @Output = glob("$BestEventDir/GM/IO2/*");
    foreach my $Output (@Output){
	# Check if this file has been assimilated already
	my $File = $Output; $File =~ s/run\d/run/;
	next if -f $File;
	# Extract the time from the file name
	my $Time = $Output; $Time =~ s/.*_e(\d+\-\d+)\..*/$1/;
	# Don't copy files from the future:
	# olddatime is the end of the current run
	next if $Time ge $olddatime;
	&shell("cp $Output run/$PlotDir");
    }

    # Link all the restarts to the best one
    for my $Dir (@Dir){
	my $EventDir = "$Dir/$Event";
	&shell("cd $EventDir;./Restart.pl -i ../../$BestEventDir/$RestartDir");
    }
}

# Final end time
$endtime = &shell("grep -A6 '#ENDTIME' $ParamOrig");
$endtime =~ s/\#ENDTIME\n//; $endtime =~ s/\s+[a-zA-Z]+\n/ /g;
$endtime =~ 
    s/(\d\d\d\d) (\d\d) (\d\d) (\d\d) (\d\d) (\d\d).*/$1$2$3\-$4$5$6/;

#exit 0;

if($olddatime eq $newdatime or $newdatime ge $endtime){
    print "End of $DstFile or exceeded end time: use end time\n";
    $newdatime = $endtime;
    print "This is the last run\n";
    &shell("touch $LastFile");
}

my ($year, $month, $day, $hour, $min, $sec) =
    ($newdatime =~ /^(\d\d\d\d)(\d\d)(\d\d)\-(\d\d)(\d\d)(\d\d)/);
print "New DA time=$newdatime\n";
print "year=$year month=$month day=$day hour=$hour min=$min sec=$sec\n" 
    if $Verbose;

# Put in new end time into all the PARAM.in files
@ARGV = glob("run?/$Event/PARAM.in");
print "All input files: @ARGV\n" if $Verbose;
my $end;
while(<>){
    $end=1 if /^#ENDTIME/;
    if($end){
	s/\d+(\s+iYear)/$year$1/;
	s/\d+(\s+iMonth)/$month$1/;
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

    if($dFracH){
	# Find current FracH and adjust it by dFracH based on Dst
	if(/([\d\.]+)\t\t\tFractionH/){
	    $FracH = $1;
	    $FracH += $dFracH if $ObsDst < $BestDst - $dDst
		and $FracH + $dFracH < $MaxFracH;
	    $FracH -= $dFracH if $ObsDst > $BestDst + $dDst
		and $FracH - $dFracH > $MinFracH;
	    $_ = sprintf("%5.3f\t\t\tFractionH\n", $FracH);
	}
	# Set FractionO as 1 - FractionH
	$_ = sprintf("%5.3f\t\t\tFractionO\n", 1-$FracH) if /FractionO/;
    }elsif($FractionH){
	# Set the FractionH and FractionO in the COMPOSITION command
	$_ = sprintf("%5.3f\t\t\tFractionH\n", $FractionH) if /FractionH/;
	if(/FractionO/){
	    $_ = sprintf("%5.3f\t\t\tFractionO\n", 1-$FractionH);
	    $FractionH += $dFraction; $FractionH = 1 if $FractionH > 1.0;
	}
    }

    # Match "28.0   Rho0Cpcp" and "0.1   RhoPerCpcp" lines
    if($CpcpFactor and /^[\d\.\s]+(Rho0Cpcp|RhoPerCpcp)/){
	# Multiply CPCPBOUNDARY parameters
	$_ = sprintf("%3.1f\*",$CpcpFactor).$_;    # insert multiplier
	$CpcpFactor *= $CpcpRatio if /RhoPerCpcp/; # increase multiplier
    }

    print;
}

print "New FracH=$FracH\n" if $dFracH and $Verbose;

exit 0;

###############################################################################
sub shell{
    my $command = join(" ",@_);
    print "$command\n" if $Verbose;
    my $result = `$command`;
    print $result if $result =~ /error/i;
    return $result;
}
###############################################################################
sub shell_array{
    my $command = join(" ",@_);
    print "$command\n" if $Verbose;
    my @result = `$command`;
    return @result;
}

###############################################################################
sub collect_data{

    my $EnsembleDir = "run/$Event";
    my $Runlog      = "$EnsembleDir/runlog";
    die "Could not find $Runlog\n" unless -f $Runlog;
    my @BestDst = &shell_array("grep BestDst $Runlog");
    my @EndTime = &shell_array("grep Old $Runlog");
    foreach (@EndTime){chop; s/Old DA time=//};

    print "Elements of BestDst=",scalar(@BestDst),
	", elements of EndTime=",scalar @EndTime,"\n"
	if $Verbose;
    
    my $Run1 = $Dir[0];
    my $EventDir = "$Run1/$Event";
    my @Results = glob("$EventDir/???.txt $EventDir/*.log");
    
    print "Results=@Results\n" if $Verbose;

    my %Result; # Results from each run
    my %Index;  # index inside the results for each run

    foreach my $Result (@Results){

	my $EnsembleResult = $Result;
	$EnsembleResult =~ s/$Run1/run/;

	print "Result=$Result, EnsembleResult=$EnsembleResult\n" if $Verbose;
	open(OUT,">$EnsembleResult") or die "Could not open $EnsembleResult\n";

	# Read in all results into the Result hash indexed by the run directory
	foreach my $Run (@Dir){
	    my $SimResult = $Result;
	    $SimResult =~ s/$Run1/$Run/;
	    print "SimResult=$SimResult\n" if $Verbose;
	    open(IN, $SimResult);
	    my @Result = <IN>;
	    close(IN);
	    print "Elements of Results=",scalar @Result," in $Run\n" if $Verbose;
	    $Result{$Run} = [@Result];
	    $Index{$Run} = 0;
	}

	my $nAssim;  # Assimilation index
	my $BestRun; # Run directory that should be assimilated
	my $Line;    # A single line of simulation output
	foreach (@BestDst){
	    /(run\d)/ or die "Did not match runN: $_\n";
	    $BestRun = $1;
	    $nAssim++;
	    /(\d\d\d\d) (\d\d) (\d\d) (\d\d)$/
		or die "Did not match ObsTime: $_\n";
	    my $ObsTime = "$1$2$3-$4"."0000";
	    my $StartTime;
	    my $EndTime;
	    foreach my $Time (@EndTime){
		$EndTime = $Time;
		last if $StartTime ge $ObsTime;
		$StartTime = $Time;
	    }

	    print "BestRun=$BestRun ObsTime=$ObsTime "
		. "StartTime=$StartTime EndTime=$EndTime\n" if $Verbose;
	    
	    # Advance to this time in each simulation
	    foreach my $Run (@Dir){
		LINE: {
		    $Line = $Result{$Run}[$Index{$Run}];
		    $Index{$Run}++;
		    last LINE unless $Line; # exit if no more data
		    print OUT $Line if $Run eq $BestRun;
		    $Line =~ s/\s+/ /g; # Replace multiple spaces with one
		    $Line =~ s/ (\d) / 0$1 /g; # Replace single digit with 0N
		    if($Line =~
		       /(\d\d\d\d) (\d\d) (\d\d) (\d\d) (\d\d) (\d\d)/){
			my $time = "$1$2$3-$4$5$6";
			if($time ge $EndTime){
			    print "$Run: last time=$time, Index=$Index{$Run}, EndTime=$EndTime\n"
				if $Verbose;
			    last LINE;
			}
		    }
		    redo LINE;
		}
	    }
	}
	if($Verbose){
	    foreach my $Run (@Dir){
		print "Lines in $Run:", scalar @{$Result{$Run}},
		    " Index($Run)= $Index{$Run}\n";
	    }
	}
	
	close(OUT);
	
    }
    
    exit 0;
}

###############################################################################
sub print_help{

    print
"AssimilateDst.pl can be used to run multiple Geospace simulations
with different paramters and assimilate hourly Dst observations 
to select the best performing simulation, which is then used for
restart for all ensemble members. This is typically called from
the ensemble job script. In addition, it can collect
the output from multiple runs into the assimilated results.

Usage: 
    AssimilateDst.pl [-h] [-c|-r|-s N] [-p] [-v] [-F=FractionH|-dF=dFracH]
         [-C=CpcpFactor] [EventNN]

EventNN is the name of the event to be simulated. Here NN represents two
    digits from 01 to 99. The default is Event01.
	
-c       - collect data from multiple runs into the assimilated optimal
-collect   result. This is a post processing step.
-p       - use predicted Dst for assimilation. Default is using the observed
-predict   hourly Dst.
-r       - reset the ensemble by copying back the original EventNN/PARAM.in
-reset     file into each run directory. Then EventNN and output file in are
           the runs are all removed.
-s N     - sleep N seconds before processing restart files. This may
-sleep N   reduce number of failures on slow LUSTRE disks. 
-h       - print out help message and exit.
-help
-v       - provide more verbose output. 
-verbose

-F=FRACTIONH  - Vary H+ fraction from FRACTIONH to 1-(1-FRACTIONH)/(N-1) where
-Fraction=...   N is the number of ensemble members. 
                Valid range is 0 < FRACTIONH < 1. 
                If neither -F= nor -C= are used, the default is F=0.7.

-dF=DFRACTION   Modify H+ and O+ fractions by +/-DFRACION depending on the
-dFraction=...  observed vs simulated Dst.

-dD=DDST        Set the tolerance in Dst. If |ObsDst-SimDst| < DDST, do not
-dDst=...       modify the fraction. Default value is 10nT.

-C=CPCPFACTOR - Vary CPCPBOUNDARY parameters by multiplying them with values
-CPCP=...       from CPCPFACTOR to 1/CPCPFACTOR. 
                Valid range is 0 < CPCPFACTOR < 1. Default is no variation.

Examples:

      Do assimilation for Event04 with default variation of the H+ fraction
      and sleep 60s between (re)starting ensemble members. Use verbose output:

../Scripts/AssimilateDst.pl -v -s=60 Event04

      Assimilate Event01 by varying the CPCPCBOUNDARY parameters 
      by multiplying with a factor from 0.5 to 2. Assimilate predicted Dst:

../Scripts/AssimilateDst.pl -p -C=0.5 Event01

      Collect post-processed results from ensembles to the assimilated run:

../Scripts/AssimilateDst.pl -c Event01

      Reset Event01 for a new run:

../Scripts/AssimilateDst.pl -r Event01

";
    exit 0;

}
