#! /usr/bin/perl-w;
use strict;
use Data::Dumper;

my %res;

my @strains = qw(MUC1 PARENT NMV1 NMV2 NMV3 NMV4);

foreach my $s (@strains)
{
my $file = "data/tmp/$s.cov";
open(FILE, $file) or die "cannot open $file";
while(<FILE>)
	{
	chomp;
	my ($gene, $median, $sd) = split/\t/, $_;
	$res{$gene}{$s}{'median'} = $median;
	$res{$gene}{$s}{'sd'} = $sd;
	}
close(FILE);
}

print "gene\tMUC1_median\tMUC1_sd\tPARENT_median\tPARENT_sd\tNMV1_median\tNMV1_sd\tNMV2_median\tNMV2_sd\tNMV3_median\tNMV3_sd\tNMV4_median\tNMV4_sd\n";
foreach my $key (sort keys %res)
{
print $key, "\t"; 
	foreach my $s (@strains)
	{
	print "$res{$key}{$s}{'median'}\t$res{$key}{$s}{'sd'}\t";
	}
print "\n";
}