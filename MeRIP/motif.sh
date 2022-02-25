#!/usr/bin/env bash
export PATH=/data/software/homer/bin/:$PATH


c="/xtdisk/xiaojf_group/lumm/monkey/bam/bam/sg3KD/motif"
hg19="/xtdisk/xiaojf_group/lumm/monkey/bam/bam/sg3KD/motif/hg19.fa"
length="/xtdisk/xiaojf_group/lumm/monkey/bam/bam/sg3KD/motif/hg19.chrom.txt"
r1="/xtdisk/xiaojf_group/lumm/monkey/bam/bam/sg3KD/myosg3_overlappeak.bed"


cd /xtdisk/xiaojf_group/lumm/monkey/bam/bam/sg3KD/motif
/software/biosoft/software/bedtools-2.25/bedtools2/bin/intersectBed -a $r1 -b $c/5UTR.bed -wa -f 0.5   > tmp_utr5.bed
/software/biosoft/software/bedtools-2.25/bedtools2/bin/intersectBed -a $r1 -b $c/CDS.bed -wa -f 0.5    > tmp_cds.bed
/software/biosoft/software/bedtools-2.25/bedtools2/bin/intersectBed -a $r1 -b $c/3UTR.bed -wa -f 0.5   > tmp_utr3.bed
cat tmp_utr5.bed tmp_cds.bed tmp_utr3.bed > peak_mRNA.bed

#########round1
mkdir RNA_motif_1
cd RNA_motif_1

/software/biosoft/software/bedtools-2.25/bedtools2/bin/shuffleBed -i ../tmp_utr5.bed   -incl $c/5UTR.bed   -g $length   > shuffle-utr5.bed
/software/biosoft/software/bedtools-2.25/bedtools2/bin/shuffleBed -i ../tmp_cds.bed    -incl $c/CDS.bed   -g $length   > shuffle-cds.bed
/software/biosoft/software/bedtools-2.25/bedtools2/bin/shuffleBed -i ../tmp_utr3.bed   -incl $c/3UTR.bed  -g $length   > shuffle-utr3.bed

cat shuffle-utr5.bed shuffle-cds.bed shuffle-utr3.bed > shuffle-mRNA.bed

/software/biosoft/software/homer/bin/findMotifsGenome.pl ../peak_mRNA.bed hg19 ./mRNAmotif -size given -p 1 -len 6 -rna -chopify  -cache 1000 -bg shuffle-mRNA.bed
/software/biosoft/software/homer/bin/findMotifsGenome.pl  ../peak_mRNA.bed hg19 ./mRNA100bp -size 100 -p 1 -len 6 -rna -chopify  -cache 1000 -bg shuffle-mRNA.bed
/software/biosoft/software/homer/bin/findMotifsGenome.pl  ../peak_mRNA.bed hg19 ./mRNA200bp -size 200 -p 1 -len 6 -rna -chopify  -cache 1000 -bg shuffle-mRNA.bed
/software/biosoft/software/homer/bin/findMotifsGenome.pl  ../peak_mRNA.bed hg19 ./mRNA300bp -size 300 -p 1 -len 6 -rna -chopify  -cache 1000 -bg shuffle-mRNA.bed
/software/biosoft/software/homer/bin/findMotifsGenome.pl  ../peak_mRNA.bed hg19 ./mRNA400bp -size   400 -p 1 -len 6 -rna -chopify  -cache 1000 -bg shuffle-mRNA.bed

