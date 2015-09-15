#! /usr/bin/sh

#This script creates bed files of each strain's features and contig boundaries relative to the reference genome.

#For each strain, use blat to find locations of all features (located by PROKKA) in the reference genome.
blat -minIdentity=99 data/WGLW5-fix.fa data/PROKKA/prokka_MUC1_V1/MUC1_V1.ffn MUC1_V1_maps.psl
blat -minIdentity=99 data/WGLW5-fix.fa data/PROKKA/prokka_MUC1/MUC1.ffn MUC1_maps.psl
blat -minIdentity=99 data/WGLW5-fix.fa data/PROKKA/prokka_NMV1/NMV1.ffn NMV1_maps.psl
blat -minIdentity=99 data/WGLW5-fix.fa data/PROKKA/prokka_NMV2/NMV2.ffn NMV2_maps.psl
blat -minIdentity=99 data/WGLW5-fix.fa data/PROKKA/prokka_NMV3/NMV3.ffn NMV3_maps.psl
blat -minIdentity=99 data/WGLW5-fix.fa data/PROKKA/prokka_NMV4/NMV4.ffn NMV4_maps.psl
blat -minIdentity=99 data/WGLW5-fix.fa data/PROKKA/prokka_PARENT/PARENT.ffn PARENT_maps.psl

#Then, for each strain, create a bed file showing the position of each feature in the reference genome, for viewing.
cut -f 14,16-17,9-10 NMV1_maps.psl | perl feature_bed.pl > NMV1-fea.bed
cut -f 14,16-17,9-10 NMV2_maps.psl | perl feature_bed.pl > NMV2-fea.bed
cut -f 14,16-17,9-10 NMV3_maps.psl | perl feature_bed.pl > NMV3-fea.bed
cut -f 14,16-17,9-10 NMV4_maps.psl | perl feature_bed.pl > NMV4-fea.bed
cut -f 14,16-17,9-10 MUC1_V1_maps.psl | perl feature_bed.pl > MUC1_V1-fea.bed
cut -f 14,16-17,9-10 MUC1_maps.psl | perl feature_bed.pl > MUC1-fea.bed
cut -f 14,16-17,9-10 PARENT_maps.psl | perl feature_bed.pl > PARENT-fea.bed

#finally, use Contiguator outputs to create a bed file for each strain that shows locations of contig boundaries for each assembly.
cut -d ' ' -f 5-7 data/Contiguator/MUC1_V1/MUC1_V1Map_output.fa/PseudoContig.crunch | perl simplebed.pl > MUC1_V1-bound.bed
cut -d ' ' -f 5-7 data/Contiguator/MUC1/MUC1Map_output.fa/PseudoContig.crunch | perl simplebed.pl > MUC1-bound.bed
cut -d ' ' -f 5-7 data/Contiguator/NMV1/NMV1Map_output.fa/PseudoContig.crunch | perl simplebed.pl > NMV1-bound.bed
cut -d ' ' -f 5-7 data/Contiguator/NMV2/NMV2Map_output.fa/PseudoContig.crunch | perl simplebed.pl > NMV2-bound.bed
cut -d ' ' -f 5-7 data/Contiguator/NMV3/NMV3Map_output.fa/PseudoContig.crunch | perl simplebed.pl > NMV3-bound.bed
cut -d ' ' -f 5-7 data/Contiguator/NMV4/NMV4Map_output.fa/PseudoContig.crunch | perl simplebed.pl > NMV4-bound.bed
cut -d ' ' -f 5-7 data/Contiguator/PARENT/PARENTMap_output.fa/PseudoContig.crunch | perl simplebed.pl > PARENT-bound.bed

