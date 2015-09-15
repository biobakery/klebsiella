#! /usr/bin/sh

# coverage of all proteins in MUC1 genome
bedtools genomecov -d -i MUC1.bed -ibam MUC1-MUC1-proteins-sorted.bam > MUC1.MUC1.tmp
perl parse_coverage.pl MUC1.MUC1.tmp > MUC1.cov

# get coverage at each position for all NMV1 proteins in MUC1 genome
bedtools genomecov -d -i NMV1.bed -ibam MUC1-NMV1-proteins-sorted.bam > NMV1.MUC1.tmp
perl parse_coverage.pl NMV1.MUC1.tmp >>MUC1.cov

bedtools genomecov -d -i NMV2.bed -ibam MUC1-NMV2-proteins-sorted.bam > NMV2.MUC1.tmp
perl parse_coverage.pl NMV2.MUC1.tmp >>MUC1.cov

bedtools genomecov -d -i NMV3.bed -ibam MUC1-NMV3-proteins-sorted.bam > NMV3.MUC1.tmp
perl parse_coverage.pl NMV3.MUC1.tmp >>MUC1.cov

bedtools genomecov -d -i NMV4.bed -ibam MUC1-NMV4-proteins-sorted.bam > NMV4.MUC1.tmp
perl parse_coverage.pl NMV4.MUC1.tmp >>MUC1.cov

bedtools genomecov -d -i PARENT.bed -ibam MUC1-PARENT-proteins-sorted.bam > PARENT.MUC1.tmp
perl parse_coverage.pl PARENT.MUC1.tmp >>MUC1.cov

#Coverage of all proteins in NMV1 genome
bedtools genomecov -d -i NMV1.bed -ibam NMV1-NMV1-proteins-sorted.bam > NMV1.NMV1.tmp
perl parse_coverage.pl NMV1.NMV1.tmp > NMV1.cov

# get coverage at each position for all MUC1 proteins in NMV1 genome
bedtools genomecov -d -i MUC1.bed -ibam NMV1-MUC1-proteins-sorted.bam > MUC1.NMV1.tmp
perl parse_coverage.pl MUC1.NMV1.tmp >>NMV1.cov

bedtools genomecov -d -i NMV2.bed -ibam NMV1-NMV2-proteins-sorted.bam > NMV2.NMV1.tmp
perl parse_coverage.pl NMV2.NMV1.tmp >>NMV1.cov

bedtools genomecov -d -i NMV3.bed -ibam NMV1-NMV3-proteins-sorted.bam > NMV3.NMV1.tmp
perl parse_coverage.pl NMV3.NMV1.tmp >>NMV1.cov

bedtools genomecov -d -i NMV4.bed -ibam NMV1-NMV4-proteins-sorted.bam > NMV4.NMV1.tmp
perl parse_coverage.pl NMV4.NMV1.tmp >>NMV1.cov

bedtools genomecov -d -i PARENT.bed -ibam NMV1-PARENT-proteins-sorted.bam > PARENT.NMV1.tmp
perl parse_coverage.pl PARENT.NMV1.tmp >>NMV1.cov

#Coverage of all proteins in NMV2 genome
bedtools genomecov -d -i NMV2.bed -ibam NMV2-NMV2-proteins-sorted.bam > NMV2.NMV2.tmp
perl parse_coverage.pl NMV2.NMV2.tmp > NMV2.cov

# get coverage at each position for all MUC1 proteins in NMV2 genome
bedtools genomecov -d -i MUC1.bed -ibam NMV2-MUC1-proteins-sorted.bam > MUC1.NMV2.tmp
perl parse_coverage.pl MUC1.NMV2.tmp >>NMV2.cov

bedtools genomecov -d -i NMV1.bed -ibam NMV2-NMV1-proteins-sorted.bam > NMV1.NMV2.tmp
perl parse_coverage.pl NMV1.NMV2.tmp >>NMV2.cov

bedtools genomecov -d -i NMV3.bed -ibam NMV2-NMV3-proteins-sorted.bam > NMV3.NMV2.tmp
perl parse_coverage.pl NMV3.NMV2.tmp >>NMV2.cov

bedtools genomecov -d -i NMV4.bed -ibam NMV2-NMV4-proteins-sorted.bam > NMV4.NMV2.tmp
perl parse_coverage.pl NMV4.NMV2.tmp >>NMV2.cov

bedtools genomecov -d -i PARENT.bed -ibam NMV2-PARENT-proteins-sorted.bam > PARENT.NMV2.tmp
perl parse_coverage.pl PARENT.NMV2.tmp >>NMV2.cov

#Coverage of all proteins in NMV3 genome
bedtools genomecov -d -i NMV3.bed -ibam NMV3-NMV3-proteins-sorted.bam > NMV3.NMV3.tmp
perl parse_coverage.pl NMV3.NMV3.tmp > NMV3.cov

# get coverage at each position for all MUC1 proteins in NMV3 genome
bedtools genomecov -d -i MUC1.bed -ibam NMV3-MUC1-proteins-sorted.bam > MUC1.NMV3.tmp
perl parse_coverage.pl MUC1.NMV3.tmp >>NMV3.cov

bedtools genomecov -d -i NMV1.bed -ibam NMV3-NMV1-proteins-sorted.bam > NMV1.NMV3.tmp
perl parse_coverage.pl NMV1.NMV3.tmp >>NMV3.cov

bedtools genomecov -d -i NMV2.bed -ibam NMV3-NMV2-proteins-sorted.bam > NMV3.NMV2.tmp
perl parse_coverage.pl NMV3.NMV2.tmp >>NMV3.cov

bedtools genomecov -d -i NMV4.bed -ibam NMV3-NMV4-proteins-sorted.bam > NMV4.NMV3.tmp
perl parse_coverage.pl NMV4.NMV3.tmp >>NMV3.cov

bedtools genomecov -d -i PARENT.bed -ibam NMV3-PARENT-proteins-sorted.bam > PARENT.NMV3.tmp
perl parse_coverage.pl PARENT.NMV3.tmp >>NMV3.cov

#Coverage of all proteins in NMV4 genome
bedtools genomecov -d -i NMV4.bed -ibam NMV4-NMV4-proteins-sorted.bam > NMV4.NMV4.tmp
perl parse_coverage.pl NMV4.NMV4.tmp > NMV4.cov

# get coverage at each position for all MUC1 proteins in NMV4 genome
bedtools genomecov -d -i MUC1.bed -ibam NMV4-MUC1-proteins-sorted.bam > MUC1.NMV4.tmp
perl parse_coverage.pl MUC1.NMV4.tmp >>NMV4.cov

bedtools genomecov -d -i NMV1.bed -ibam NMV4-NMV1-proteins-sorted.bam > NMV1.NMV4.tmp
perl parse_coverage.pl NMV1.NMV4.tmp >>NMV4.cov

bedtools genomecov -d -i NMV2.bed -ibam NMV4-NMV2-proteins-sorted.bam > NMV4.NMV2.tmp
perl parse_coverage.pl NMV4.NMV2.tmp >>NMV4.cov

bedtools genomecov -d -i NMV3.bed -ibam NMV4-NMV3-proteins-sorted.bam > NMV4.NMV3.tmp
perl parse_coverage.pl NMV4.NMV3.tmp >>NMV4.cov

bedtools genomecov -d -i PARENT.bed -ibam NMV4-PARENT-proteins-sorted.bam > PARENT.NMV4.tmp
perl parse_coverage.pl PARENT.NMV4.tmp >>NMV4.cov

#Coverage of all proteins in PARENT genome
bedtools genomecov -d -i PARENT.bed -ibam PARENT-PARENT-proteins-sorted.bam > PARENT.PARENT.tmp
perl parse_coverage.pl PARENT.PARENT.tmp > PARENT.cov

# get coverage at each position for all MUC1 proteins in PARENT genome
bedtools genomecov -d -i MUC1.bed -ibam PARENT-MUC1-proteins-sorted.bam > MUC1.PARENT.tmp
perl parse_coverage.pl MUC1.PARENT.tmp >>PARENT.cov

bedtools genomecov -d -i NMV1.bed -ibam PARENT-NMV1-proteins-sorted.bam > NMV1.PARENT.tmp
perl parse_coverage.pl NMV1.PARENT.tmp >>PARENT.cov

bedtools genomecov -d -i NMV2.bed -ibam PARENT-NMV2-proteins-sorted.bam > PARENT.NMV2.tmp
perl parse_coverage.pl PARENT.NMV2.tmp >>PARENT.cov

bedtools genomecov -d -i NMV3.bed -ibam PARENT-NMV3-proteins-sorted.bam > PARENT.NMV3.tmp
perl parse_coverage.pl PARENT.NMV3.tmp >>PARENT.cov

bedtools genomecov -d -i NMV4.bed -ibam PARENT-NMV4-proteins-sorted.bam > PARENT.NMV4.tmp
perl parse_coverage.pl PARENT.NMV4.tmp >>PARENT.cov

rm *.tmp
mv *.cov data/tmp








