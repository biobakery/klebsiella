#! /usr/bin/perl-w;
use strict;
use Data::Dumper;

#final: quantile(as.numeric(col$numericdat[,1]), na.rm=TRUE, probs=0.25) - (2 * IQR(as.numeric(col$numericdat[,1]), na.rm=TRUE))
#Note: the values in %vals have been determined by loading data_table.txt into R and applying the calculation above to determine
#the 25th percentile - 2 IQR coverage cutoff.
my %vals = 
(
"MUC1" =>69,
"PAR" => 23,
"NMV1" =>20,
"NMV2"=>6,
"NMV3" =>17,
"NMV4"=>78
);

print "gene\tmuc1\tpar\tnmv1\tnm2\tnmv3\tnmv4\n";
while(<>)
{
my @l = split/\t/, $_;
my ($gene, $muc1, $par, $nmv1, $nmv2, $nmv3, $nmv4) = ($l[0], $l[1], $l[3], $l[5], $l[7], $l[9], $l[11]);
my $s = $gene;
$s=~s/KP//g;
$s=substr($s, 0, 4);
$s=~s/_//g;
if ($s eq "MUC1")
	{
	if ($muc1 < $vals{"MUC1"}) {  next};	
	if ($muc1 > $vals{"MUC1"}) { do_stuff(@l); next; }
	}
if ($s eq "NMV1")
	{
	if ($nmv1 < $vals{"NMV1"}) { next};	
	if ($nmv1 > $vals{"NMV1"}) { do_stuff(@l); next;}
	}	
if ($s eq "NMV2")
	{
	if ($nmv2 < $vals{"NMV2"}) { next};	
	if ($nmv2 > $vals{"NMV2"}) { do_stuff( @l); next;}
	}
if ($s eq "NMV3")
	{
	if ($nmv3 < $vals{"NMV3"}) { next};	
	if ($nmv3 > $vals{"NMV3"}) { do_stuff(@l); next;}
	}
if ($s eq "NMV4")
	{
	if ($nmv4 < $vals{"NMV4"}) { next};	
	if ($nmv4 > $vals{"NMV4"}) { do_stuff(@l); next;}
	}
if ($s eq "PAR")
	{
	if ($par < $vals{"PAR"}) { next};
	if ($par > $vals{"PAR"}) { do_stuff(@l); next;}	
	}

}

sub do_stuff
{
my @l = @_;
my ($gene, $muc1, $par, $nmv1, $nmv2, $nmv3, $nmv4) = ($l[0], $l[1], $l[3], $l[5], $l[7], $l[9], $l[11]);
print "$gene\t";
	if ($muc1 > $vals{"MUC1"}) { print "$l[1]\t"; } else {print "\t"; }	
	if ($par > $vals{"PAR"}) { print "$l[3]\t";} else {print "\t"; }	
	if ($nmv1 > $vals{"NMV1"}) { print "$l[5]\t";} else {print "\t"; }
	if ($nmv2 > $vals{"NMV2"}) { print "$l[7]\t";} else {print "\t"; }
	if ($nmv3 > $vals{"NMV3"}) { print "$l[9]\t";} else {print "\t"; }		
	if ($nmv4 > $vals{"NMV4"}) { print "$l[11]\t";} else {print "\t"; }		
	print "\n";
}