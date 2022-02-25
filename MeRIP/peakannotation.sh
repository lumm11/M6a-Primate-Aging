#!/bin/sh
#PBS -q q256G
#PBS -l mem=20gb,nodes=1:ppn=4,walltime=99999:00:00
#HSCHED -s Project_name+Software_Name+Species

output=/xtdisk/xiaojf_group/lumm/monkey/bam/bam/

cd /xtdisk/xiaojf_group/lumm/monkey/bam/bam/peaks
for sam in M-YF1 M-YF2 M-YF3 M-YF4 M-YM1 M-YM2 M-YM3 M-YM4 M-OF1 M-OF2 M-OF3 M-OF4 M-OM1 M-OM2 M-OM3 M-OM4 L-YF1 L-YF2 L-YF3 L-YF4 L-YM1 L-YM2 L-YM3 L-YM4 L-OF1 L-OF2 L-OF3 L-OF4 L-OM1 L-OM2 L-OM3 L-OM4 H-YF1 H-YF2 H-YF4 H-YM2 H-YM3 H-OF1 H-OM1 H-OM2 H-OM3 H-OM4 
do 
grep -v "#"  {$sam}_peaks.xls | grep -v start | awk '{$7>5 && $8>1}{print $1"\t"$2"\t"$3"\t"$8}' OFS="\t"  > {$sam}_peaks_high-confidence.bedgraph
intersectBed -a {$sam}_peaks_high-confidence.bedgraph -b Macaca_refGene_protein_genename.gtf -wo > $output/{$sam}_peaks_high-confidence.genelist.txt
done

