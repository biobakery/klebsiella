 #! /usr/bin/sh
 
 # calculate coverage on bams for each strain & output to bed files
 
bedtools genomecov -ibam NMV3-sorted.bam -bga | awk '$4==0' > NMV3-gaps.bed
bedtools genomecov -ibam NMV4-sorted.bam -bga | awk '$4==0' > NMV4-gaps.bed
bedtools genomecov -ibam NMV1-sorted.bam -bga | awk '$4==0' > NMV1-gaps.bed
bedtools genomecov -ibam NMV2-sorted.bam -bga | awk '$4==0' > NMV2-gaps.bed
bedtools genomecov -ibam MUC1-sorted.bam -bga | awk '$4==0' > MUC1-gaps.bed
bedtools genomecov -ibam Parent-sorted.bam -bga | awk '$4==0' > Parent-gaps.bed
bedtools genomecov -ibam MUC1-old-sorted.bam -bga | awk '$4==0' > MUC1-old-gaps.bed

