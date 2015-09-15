#! /usr/bin/perl-w;
use strict;
use Data::Dumper;


my %key;

my @genomes = ("MUC1_V1", "PARENT", "NMV1", "NMV2", "NMV3", "NMV4", "MUC1");

foreach my $g (@genomes)
{
	open(FILE, "data/PROKKA/prokka_$g/$g.ffn") or die "cannot open $g.ffn";
	while(<FILE>)
	{
		chomp;
		if (/>/)
			{
		
		my @l = split/\s/, $_;
		my $id = shift(@l);
		$id=~s/>//g;
			my $desc = shift(@l);
			foreach my $l (@l)
				{
				$desc = $desc."_".$l;
				}
		#print "$id and $desc\n";
			$key{$id} = "$id.$desc";
			}
		
	}
	close(FILE);
}

#print Dumper %key

while(<>)
{
chomp;
unless($_=~/KP/) { next;}
my ($strand, $gene, $fa, $start, $stop) = split/\t/, $_;
print "$fa\t$start\t$stop\t$key{$gene}\t254\t$strand\n";
}