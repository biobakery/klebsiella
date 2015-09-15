#! /usr/bin/sh

#First step: create index

bowtie2-build data/WGLW5-fix.fa WGLW5-fix

# Second step: do alignments

bowtie2 --quiet -q -x WGLW5-fix -1 /Users/xochitlmorgan/pairedR1_NMV3.fastq.gz -2  /Users/xochitlmorgan/pairedR2_NMV3.fastq.gz -S NMV3.sam
samtools view -bS NMV3.sam > NMV3.bam
samtools sort NMV3.bam NMV3-sorted
rm NMV3.sam
rm NMV3.bam

bowtie2 --quiet -q -x WGLW5-fix -1 /Users/xochitlmorgan/pairedR1_NMV2.fastq.gz -2  /Users/xochitlmorgan/pairedR2_NMV2.fastq.gz -S NMV2.sam
samtools view -bS NMV2.sam > NMV2.bam
samtools sort NMV2.bam NMV2-sorted
rm NMV2.sam
rm NMV2.bam

bowtie2 --quiet -q -x WGLW5-fix -1 /Users/xochitlmorgan/pairedR1_NMV1.fastq.gz -2  /Users/xochitlmorgan/pairedR2_NMV1.fastq.gz -S NMV1.sam
samtools view -bS NMV1.sam > NMV1.bam
samtools sort NMV1.bam NMV1-sorted
rm NMV1.sam
rm NMV1.bam

bowtie2 --quiet -q -x WGLW5-fix -1 /Users/xochitlmorgan/pairedR1_NMV4.fastq.gz -2  /Users/xochitlmorgan/pairedR2_NMV4.fastq.gz -S NMV4.sam
samtools view -bS NMV4.sam > NMV4.bam
samtools sort NMV4.bam NMV4-sorted
rm NMV4.sam
rm NMV4.bam

bowtie2 --quiet -q -x WGLW5-fix -1 /Users/xochitlmorgan/pairedR1_parent.fastq.gz -2  /Users/xochitlmorgan/pairedR2_parent.fastq.gz -S Parent.sam
samtools view -bS Parent.sam > Parent.bam
samtools sort Parent.bam Parent-sorted
rm Parent.sam
rm Parent.bam

bowtie2 --quiet -q -x WGLW5-fix -1 /Users/xochitlmorgan/pairedR1_MUC1.fastq.gz -2  /Users/xochitlmorgan/pairedR2_MUC1.fastq.gz -S MUC1.sam
samtools view -bS MUC1.sam > MUC1.bam
samtools sort MUC1.bam MUC1-sorted
rm MUC1.sam
rm MUC1.bam

bowtie2 --quiet -q -x WGLW5-fix -1 /Users/xochitlmorgan/bams/MUC1_R1.fastq.gz -2 /Users/xochitlmorgan/bams/MUC1_R2.fastq.gz -S MUC1.sam
samtools view -bS MUC1.sam > MUC1.bam
samtools sort MUC1.bam MUC1-sorted
rm MUC1.sam
rm MUC1.bam

bowtie2 --quiet -q -x WGLW5-fix -1 /Users/xochitlmorgan/bams/pairedR1_MUC1.fastq -2 /Users/xochitlmorgan/bams/pairedR2_MUC1.fastq -S MUC1-old.sam
samtools view -bS MUC1-old.sam > MUC1-old.bam
samtools sort MUC1-old.bam MUC1-old-sorted
rm MUC1-old.sam
rm MUC1-old.bam

samtools index NMV1-sorted.bam NMV1-sorted.bai
samtools index NMV2-sorted.bam NMV2-sorted.bai
samtools index NMV3-sorted.bam NMV3-sorted.bai
samtools index NMV4-sorted.bam NMV4-sorted.bai
samtools index Parent-sorted.bam Parent-sorted.bai
samtools index MUC1-sorted.bam MUC1-sorted.bai
samtools index MUC1-old-sorted.bam MUC1-old-sorted.bai