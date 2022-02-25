#!/bin/sh

##make bed files
cd /p200/xiaojf_group/lumm/monkey/bam/bam
for sample in H-OF1 H-OM1 H-OM2 H-OM3 H-OM4 H-YF1 H-YF2 H-YF4 H-YM2 H-YM3
do
bedtools intersect -abam Heart_bam/${sample}_IP_hisat2_MAPQ20.sorted.bam -b newPeakFile.txt -bed -wb > bedCounts/${sample}.bed
done

for sample in M-OF1 M-OF2 M-OF3 M-OF4 M-OM1 M-OM2 M-OM3 M-OM4 M-YF1 M-YF2 M-YF3 M-YF4 M-YM1 M-YM2 M-YM3 M-YM4
do
bedtools intersect -abam Muscle_bam/${sample}_IP_hisat2_MAPQ20.sorted.bam -b newPeakFile.txt -bed -wb > bedCounts/${sample}.bed
done

for sample in L-OF1 L-OF2 L-OF3 L-OF4 L-OM1 L-OM2 L-OM3 L-OM4 L-YF1 L-YF2 L-YF3 L-YF4 L-YM1 L-YM2 L-YM3 L-YM4
do
bedtools intersect -abam Liver_bam/${sample}_IP_hisat2_MAPQ20.sorted.bam -b newPeakFile.txt -bed -wb > bedCounts/${sample}.bed
done

##peak countss
for sample in H-OF1 H-OM1 H-OM2 H-OM3 H-OM4 H-YF1 H-YF2 H-YF4 H-YM2 H-YM3
do
echo $sample >> bamCounts.txt
samtools view -c Heart_bam/${sample}_IP_hisat2_MAPQ20.sorted.bam >> bamCounts.txt
cat bedCounts/${sample}.bed| awk '{a[$NF]++}END{for(i in a){print i,a[i]}}'>${sample}.peak.count.txt
done

for sample in M-OF1 M-OF2 M-OF3 M-OF4 M-OM1 M-OM2 M-OM3 M-OM4 M-YF1 M-YF2 M-YF3 M-YF4 M-YM1 M-YM2 M-YM3 M-YM4
do
echo $sample >> bamCounts.txt
samtools view -c Muscle_bam/${sample}_IP_hisat2_MAPQ20.sorted.bam >> bamCounts.txt
cat bedCounts/${sample}.bed| awk '{a[$NF]++}END{for(i in a){print i,a[i]}}'>${sample}.peak.count.txt
done

for sample in L-OF1 L-OF2 L-OF3 L-OF4 L-OM1 L-OM2 L-OM3 L-OM4 L-YF1 L-YF2 L-YF3 L-YF4 L-YM1 L-YM2 L-YM3 L-YM4
do
echo $sample >> bamCounts.txt
samtools view -c Liver_bam/${sample}_IP_hisat2_MAPQ20.sorted.bam >> bamCounts.txt
cat bedCounts/${sample}.bed| awk '{a[$NF]++}END{for(i in a){print i,a[i]}}'>${sample}.peak.count.txt
done

