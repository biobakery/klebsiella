#! /usr/bin/perl-w
use strict;

while(<>)
{
chomp;
my ($contig, $start, $end) = split/\s/, $_;
print "output.fa\t$start\t$end\t$contig\n"
}