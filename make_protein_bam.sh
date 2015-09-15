#! /usr/bin/sh


#first, make indices
bowtie2-build data/PROKKA/prokka_MUC1/MUC1.ffn bams/MUC1
bowtie2-build data/PROKKA/prokka_NMV1/NMV1.ffn bams/NMV1
bowtie2-build data/PROKKA/prokka_NMV2/NMV2.ffn bams/NMV2
bowtie2-build data/PROKKA/prokka_NMV3/NMV3.ffn bams/NMV3
bowtie2-build data/PROKKA/prokka_NMV4/NMV4.ffn bams/NMV4
bowtie2-build data/PROKKA/prokka_PAR/PAR.ffn bams/PAR

#second, make bams
#muc1 genome, muc1 proteins
bowtie2 --quiet -q  -x MUC1 -1 data/bams/pairedR1_MUC1.fastq.gz -2  data/bams/pairedR2_MUC1.fastq.gz -S MUC1-proteins.sam
samtools view -bS MUC1-proteins.sam > MUC1-proteins.bam
samtools sort MUC1-proteins.bam MUC1-MUC1-proteins-sorted
rm MUC1-proteins.sam
rm MUC1-proteins.bam

#muc1 genome, nmv1 proteins
bowtie2 --quiet -q  -x NMV1 -1 data/bams/pairedR1_MUC1.fastq.gz -2  data/bams/pairedR2_MUC1.fastq.gz -S MUC1-proteins.sam
samtools view -bS MUC1-proteins.sam > MUC1-proteins.bam
samtools sort MUC1-proteins.bam MUC1-NMV1-proteins-sorted
rm MUC1-proteins.sam
rm MUC1-proteins.bam

#muc1 genome, nmv2 proteins
bowtie2 --quiet -q  -x NMV2 -1 data/bams/pairedR1_MUC1.fastq.gz -2  data/bams/pairedR2_MUC1.fastq.gz -S MUC1-proteins.sam
samtools view -bS MUC1-proteins.sam > MUC1-proteins.bam
samtools sort MUC1-proteins.bam MUC1-NMV2-proteins-sorted
rm MUC1-proteins.sam
rm MUC1-proteins.bam

#muc1 genome, nmv3 proteins
bowtie2 --quiet -q  -x NMV3 -1 data/bams/pairedR1_MUC1.fastq.gz -2  data/bams/pairedR2_MUC1.fastq.gz -S MUC1-proteins.sam
samtools view -bS MUC1-proteins.sam > MUC1-proteins.bam
samtools sort MUC1-proteins.bam MUC1-NMV3-proteins-sorted
rm MUC1-proteins.sam
rm MUC1-proteins.bam

#muc1 genome, NMV4 proteins
bowtie2 --quiet -q  -x NMV4 -1 data/bams/pairedR1_MUC1.fastq.gz -2  data/bams/pairedR2_MUC1.fastq.gz -S MUC1-proteins.sam
samtools view -bS MUC1-proteins.sam > MUC1-proteins.bam
samtools sort MUC1-proteins.bam MUC1-NMV4-proteins-sorted
rm MUC1-proteins.sam
rm MUC1-proteins.bam

#muc1 genome, parent proteins
bowtie2 --quiet -q  -x PARENT -1 data/bams/pairedR1_MUC1.fastq.gz -2  data/bams/pairedR2_MUC1.fastq.gz -S MUC1-proteins.sam
samtools view -bS MUC1-proteins.sam > MUC1-proteins.bam
samtools sort MUC1-proteins.bam MUC1-PARENT-proteins-sorted
rm MUC1-proteins.sam
rm MUC1-proteins.bam

#parent genome, parent proteins
bowtie2 --quiet -q  -x PARENT -1 data/bams/pairedR1_PARENT.fastq.gz -2  data/bams/pairedR2_PARENT.fastq.gz -S PARENT-proteins.sam
samtools view -bS PARENT-proteins.sam > PARENT-proteins.bam
samtools sort PARENT-proteins.bam PARENT-PARENT-proteins-sorted
rm PARENT-proteins.sam
rm PARENT-proteins.bam

#parent genome, muc1 proteins
bowtie2 --quiet -q  -x MUC1 -1 data/bams/pairedR1_PARENT.fastq.gz -2  data/bams/pairedR2_PARENT.fastq.gz -S PARENT-proteins.sam
samtools view -bS PARENT-proteins.sam > PARENT-proteins.bam
samtools sort PARENT-proteins.bam PARENT-MUC1-proteins-sorted
rm PARENT-proteins.sam
rm PARENT-proteins.bam

#parent genome, nmv1 proteins
bowtie2 --quiet -q  -x NMV1 -1 data/bams/pairedR1_PARENT.fastq.gz -2  data/bams/pairedR2_PARENT.fastq.gz -S PARENT-proteins.sam
samtools view -bS PARENT-proteins.sam > PARENT-proteins.bam
samtools sort PARENT-proteins.bam PARENT-NMV1-proteins-sorted
rm PARENT-proteins.sam
rm PARENT-proteins.bam

#parent genome, nmv2 proteins
bowtie2 --quiet -q  -x NMV2 -1 data/bams/pairedR1_PARENT.fastq.gz -2  data/bams/pairedR2_PARENT.fastq.gz -S PARENT-proteins.sam
samtools view -bS PARENT-proteins.sam > PARENT-proteins.bam
samtools sort PARENT-proteins.bam PARENT-NMV2-proteins-sorted
rm PARENT-proteins.sam
rm PARENT-proteins.bam

#parent genome, nmv3 proteins
bowtie2 --quiet -q  -x NMV3 -1 data/bams/pairedR1_PARENT.fastq.gz -2  data/bams/pairedR2_PARENT.fastq.gz -S PARENT-proteins.sam
samtools view -bS PARENT-proteins.sam > PARENT-proteins.bam
samtools sort PARENT-proteins.bam PARENT-NMV3-proteins-sorted
rm PARENT-proteins.sam
rm PARENT-proteins.bam

#parent genome, nmv4 proteins
bowtie2 --quiet -q  -x NMV4 -1 data/bams/pairedR1_PARENT.fastq.gz -2  data/bams/pairedR2_PARENT.fastq.gz -S PARENT-proteins.sam
samtools view -bS PARENT-proteins.sam > PARENT-proteins.bam
samtools sort PARENT-proteins.bam PARENT-NMV4-proteins-sorted
rm PARENT-proteins.sam
rm PARENT-proteins.bam

#nmv1 genome, nmv1 proteins
bowtie2 --quiet -q  -x NMV1 -1 data/bams/pairedR1_NMV1.fastq.gz -2  data/bams/pairedR2_NMV1.fastq.gz -S NMV1-proteins.sam
samtools view -bS NMV1-proteins.sam > NMV1-proteins.bam
samtools sort NMV1-proteins.bam NMV1-NMV1-proteins-sorted
rm NMV1-proteins.sam
rm NMV1-proteins.bam

#nmv1 genome, parent proteins
bowtie2 --quiet -q  -x PARENT -1 data/bams/pairedR1_NMV1.fastq.gz -2  data/bams/pairedR2_NMV1.fastq.gz -S NMV1-proteins.sam
samtools view -bS NMV1-proteins.sam > NMV1-proteins.bam
samtools sort NMV1-proteins.bam NMV1-PARENT-proteins-sorted
rm NMV1-proteins.sam
rm NMV1-proteins.bam

#nmv1 genome, nmv2 proteins
bowtie2 --quiet -q  -x NMV2 -1 data/bams/pairedR1_NMV1.fastq.gz -2  data/bams/pairedR2_NMV1.fastq.gz -S NMV1-proteins.sam
samtools view -bS NMV1-proteins.sam > NMV1-proteins.bam
samtools sort NMV1-proteins.bam NMV1-NMV2-proteins-sorted
rm NMV1-proteins.sam
rm NMV1-proteins.bam

#nmv1 genome, nmv3 proteins
bowtie2 --quiet -q  -x NMV3 -1 data/bams/pairedR1_NMV1.fastq.gz -2  data/bams/pairedR2_NMV1.fastq.gz -S NMV1-proteins.sam
samtools view -bS NMV1-proteins.sam > NMV1-proteins.bam
samtools sort NMV1-proteins.bam NMV1-NMV3-proteins-sorted
rm NMV1-proteins.sam
rm NMV1-proteins.bam

#nmv1 genome, nmv4 proteins
bowtie2 --quiet -q  -x NMV4 -1 data/bams/pairedR1_NMV1.fastq.gz -2  data/bams/pairedR2_NMV1.fastq.gz -S NMV1-proteins.sam
samtools view -bS NMV1-proteins.sam > NMV1-proteins.bam
samtools sort NMV1-proteins.bam NMV1-NMV4-proteins-sorted
rm NMV1-proteins.sam
rm NMV1-proteins.bam

#nmv1 genome, muc1 proteins
bowtie2 --quiet -q  -x MUC1 -1 data/bams/pairedR1_NMV1.fastq.gz -2  data/bams/pairedR2_NMV1.fastq.gz -S NMV1-proteins.sam
samtools view -bS NMV1-proteins.sam > NMV1-proteins.bam
samtools sort NMV1-proteins.bam NMV1-MUC1-proteins-sorted
rm NMV1-proteins.sam
rm NMV1-proteins.bam

#nmv2 genome, nmv2 proteins
bowtie2 --quiet -q  -x NMV2 -1 data/bams/pairedR1_NMV2.fastq.gz -2  data/bams/pairedR2_NMV2.fastq.gz -S NMV2-proteins.sam
samtools view -bS NMV2-proteins.sam > NMV2-proteins.bam
samtools sort NMV2-proteins.bam NMV2-NMV2-proteins-sorted
rm NMV2-proteins.sam
rm NMV2-proteins.bam

#nmv2 genome, parent proteins
bowtie2 --quiet -q  -x PARENT -1 data/bams/pairedR1_NMV2.fastq.gz -2  data/bams/pairedR2_NMV2.fastq.gz -S NMV2-proteins.sam
samtools view -bS NMV2-proteins.sam > NMV2-proteins.bam
samtools sort NMV2-proteins.bam NMV2-PARENT-proteins-sorted
rm NMV2-proteins.sam
rm NMV2-proteins.bam

#nmv2 genome, nmv1 proteins
bowtie2 --quiet -q  -x NMV1 -1 data/bams/pairedR1_NMV2.fastq.gz -2  data/bams/pairedR2_NMV2.fastq.gz -S NMV2-proteins.sam
samtools view -bS NMV2-proteins.sam > NMV2-proteins.bam
samtools sort NMV2-proteins.bam NMV2-NMV1-proteins-sorted
rm NMV2-proteins.sam
rm NMV2-proteins.bam

#nmv2 genome, nmv3 proteins
bowtie2 --quiet -q  -x NMV3 -1 data/bams/pairedR1_NMV2.fastq.gz -2  data/bams/pairedR2_NMV2.fastq.gz -S NMV2-proteins.sam
samtools view -bS NMV2-proteins.sam > NMV2-proteins.bam
samtools sort NMV2-proteins.bam NMV2-NMV3-proteins-sorted
rm NMV2-proteins.sam
rm NMV2-proteins.bam

#nmv2 genome, nmv4 proteins
bowtie2 --quiet -q  -x NMV4 -1 data/bams/pairedR1_NMV2.fastq.gz -2  data/bams/pairedR2_NMV2.fastq.gz -S NMV2-proteins.sam
samtools view -bS NMV2-proteins.sam > NMV2-proteins.bam
samtools sort NMV2-proteins.bam NMV2-NMV4-proteins-sorted
rm NMV2-proteins.sam
rm NMV2-proteins.bam

#nmv2 venome, muc1 proteins
bowtie2 --quiet -q  -x MUC1 -1 data/bams/pairedR1_NMV2.fastq.gz -2  data/bams/pairedR2_NMV2.fastq.gz -S NMV2-proteins.sam
samtools view -bS NMV2-proteins.sam > NMV2-proteins.bam
samtools sort NMV2-proteins.bam NMV2-MUC1-proteins-sorted
rm NMV2-proteins.sam
rm NMV2-proteins.bam

#nmv3 genome, nmv3 proteins
bowtie2 --quiet -q  -x NMV3 -1 data/bams/pairedR1_NMV3.fastq.gz -2  data/bams/pairedR2_NMV3.fastq.gz -S NMV3-proteins.sam
samtools view -bS NMV3-proteins.sam > NMV3-proteins.bam
samtools sort NMV3-proteins.bam NMV3-NMV3-proteins-sorted
rm NMV3-proteins.sam
rm NMV3-proteins.bam

#nmv3 genome, parent proteins
bowtie2 --quiet -q  -x PARENT -1 data/bams/pairedR1_NMV3.fastq.gz -2  data/bams/pairedR2_NMV3.fastq.gz -S NMV3-proteins.sam
samtools view -bS NMV3-proteins.sam > NMV3-proteins.bam
samtools sort NMV3-proteins.bam NMV3-PARENT-proteins-sorted
rm NMV3-proteins.sam
rm NMV3-proteins.bam

#nmv3 gnome, nmv1 proteins
bowtie2 --quiet -q  -x NMV1 -1 data/bams/pairedR1_NMV3.fastq.gz -2  data/bams/pairedR2_NMV3.fastq.gz -S NMV3-proteins.sam
samtools view -bS NMV3-proteins.sam > NMV3-proteins.bam
samtools sort NMV3-proteins.bam NMV3-NMV1-proteins-sorted
rm NMV3-proteins.sam
rm NMV3-proteins.bam

#nmv3 genome, nmv2 proteins
bowtie2 --quiet -q  -x NMV2 -1 data/bams/pairedR1_NMV3.fastq.gz -2  data/bams/pairedR2_NMV3.fastq.gz -S NMV3-proteins.sam
samtools view -bS NMV3-proteins.sam > NMV3-proteins.bam
samtools sort NMV3-proteins.bam NMV3-NMV2-proteins-sorted
rm NMV3-proteins.sam
rm NMV3-proteins.bam

#nmv3 genome, nmv4 proteins
bowtie2 --quiet -q  -x NMV4 -1 data/bams/pairedR1_NMV3.fastq.gz -2  data/bams/pairedR2_NMV3.fastq.gz -S NMV3-proteins.sam
samtools view -bS NMV3-proteins.sam > NMV3-proteins.bam
samtools sort NMV3-proteins.bam NMV3-NMV4-proteins-sorted
rm NMV3-proteins.sam
rm NMV3-proteins.bam

#nmv3 genome, muc1 proteins
bowtie2 --quiet -q  -x MUC1 -1 data/bams/pairedR1_NMV3.fastq.gz -2  data/bams/pairedR2_NMV3.fastq.gz -S NMV3-proteins.sam
samtools view -bS NMV3-proteins.sam > NMV3-proteins.bam
samtools sort NMV3-proteins.bam NMV3-MUC1-proteins-sorted
rm NMV3-proteins.sam
rm NMV3-proteins.bam

#nmv4 genome, nmv4 proteins
bowtie2 --quiet -q  -x NMV4 -1 data/bams/pairedR1_NMV4.fastq.gz -2  data/bams/pairedR2_NMV4.fastq.gz -S NMV4-proteins.sam
samtools view -bS NMV4-proteins.sam > NMV4-proteins.bam
samtools sort NMV4-proteins.bam NMV4-NMV4-proteins-sorted
rm NMV4-proteins.sam
rm NMV4-proteins.bam

#nmv4 genome, parent proteins
bowtie2 --quiet -q  -x PARENT -1 data/bams/pairedR1_NMV4.fastq.gz -2  data/bams/pairedR2_NMV4.fastq.gz -S NMV4-proteins.sam
samtools view -bS NMV4-proteins.sam > NMV4-proteins.bam
samtools sort NMV4-proteins.bam NMV4-PARENT-proteins-sorted
rm NMV4-proteins.sam
rm NMV4-proteins.bam

#nmv4 genome, nmv1 proteins
bowtie2 --quiet -q  -x NMV1 -1 data/bams/pairedR1_NMV4.fastq.gz -2  data/bams/pairedR2_NMV4.fastq.gz -S NMV4-proteins.sam
samtools view -bS NMV4-proteins.sam > NMV4-proteins.bam
samtools sort NMV4-proteins.bam NMV4-NMV1-proteins-sorted
rm NMV4-proteins.sam
rm NMV4-proteins.bam

#nmv4 genome, nmv2 proteins
bowtie2 --quiet -q  -x NMV2 -1 data/bams/pairedR1_NMV4.fastq.gz -2  data/bams/pairedR2_NMV4.fastq.gz -S NMV4-proteins.sam
samtools view -bS NMV4-proteins.sam > NMV4-proteins.bam
samtools sort NMV4-proteins.bam NMV4-NMV2-proteins-sorted
rm NMV4-proteins.sam
rm NMV4-proteins.bam

#nmv4 genome, nmv3 proteins
bowtie2 --quiet -q  -x NMV3 -1 data/bams/pairedR1_NMV4.fastq.gz -2  data/bams/pairedR2_NMV4.fastq.gz -S NMV4-proteins.sam
samtools view -bS NMV4-proteins.sam > NMV4-proteins.bam
samtools sort NMV4-proteins.bam NMV4-NMV3-proteins-sorted
rm NMV4-proteins.sam
rm NMV4-proteins.bam

#nmv4 genome, muc1 proteins
bowtie2 --quiet -q  -x MUC1 -1 data/bams/pairedR1_NMV4.fastq.gz -2  data/bams/pairedR2_NMV4.fastq.gz -S NMV4-proteins.sam
samtools view -bS NMV4-proteins.sam > NMV4-proteins.bam
samtools sort NMV4-proteins.bam NMV4-MUC1-proteins-sorted
rm NMV4-proteins.sam
rm NMV4-proteins.bam



