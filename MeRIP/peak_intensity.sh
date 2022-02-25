#!/bin/sh
#PBS -q q512G
#PBS -l mem=80gb,nodes=1:ppn=6,walltime=99999:00:00
#HSCHED -s Project_name+Software_Name+Species

cd /xtdisk/xiaojf_group/lumm/monkey/bam/bam/peaks/


intersectBed -f 0.5 -wo -a Monkey-Muscle_peaks.txt -b Macaca_refGene_protein_genename.gtf  | awk '{print $1"\t"$2"\t"$3"\t"$7}' | uniq > Monkey-Muscle_peaks.mRNA.txt
intersectBed -f 0.5 -wo -a Monkey-Heart_peaks.txt -b Macaca_refGene_protein_genename.gtf | awk '{print $1"\t"$2"\t"$3"\t"$7}' | uniq > Monkey-Heart_peaks.mRNA.txt
intersectBed -f 0.5 -wo -a Monkey-Liver_peaks.txt -b Macaca_refGene_protein_genename.gtf  | awk '{print $1"\t"$2"\t"$3"\t"$7}' | uniq > Monkey-Liver_peaks.mRNA.txt

#rpkm.sh

cd /xtdisk/xiaojf_group/lumm/monkey/bam/bam/Muscle_bam
input=/xtdisk/xiaojf_group/lumm/monkey/bam/bam/peaks/Monkey-Muscle_peaks.mRNA.txt
for bam in M-YM2_INPUT_hisat2_MAPQ20.sorted.bam M-YF2_INPUT_hisat2_MAPQ20.sorted.bam M-YM2_IP_hisat2_MAPQ20.sorted.bam M-YF2_IP_hisat2_MAPQ20.sorted.bam
do
file=$(basename $bam )
sample=${file%%.*}
echo $sample
export total_reads=$(/software/biosoft/software/samtools-1.9/samtools idxstats $bam|awk -F '\t' '{s+=$3}END{print s}')
echo The number of reads is $total_reads
bedtools multicov -bams $bam -bed $input |perl -alne '{$len=$F[2]-$F[1];if($len <1 ){print "$.\t$F[4]\t0" }else{$rpkm=(1000000000*$F[4]/($len* $ENV{total_reads}));print "$.\t$F[4]\t$rpkm"}}' > /xtdisk/xiaojf_group/lumm/monkey/bam/bam/rpkm/${sample}.rpkm.txt
done

cd /xtdisk/xiaojf_group/lumm/monkey/bam/bam/Heart_bam
input=/xtdisk/xiaojf_group/lumm/monkey/bam/bam/peaks/Monkey-Heart_peaks.mRNA.txt
for bam in H-YF1_INPUT_hisat2_MAPQ20.sorted.bam H-YM3_INPUT_hisat2_MAPQ20.sorted.bam H-YF1_IP_hisat2_MAPQ20.sorted.bam H-YM3_IP_hisat2_MAPQ20.sorted.bam
do
file=$(basename $bam )
sample=${file%%.*}
echo $sample
export total_reads=$(/software/biosoft/software/samtools-1.9/samtools idxstats $bam|awk -F '\t' '{s+=$3}END{print s}')
echo The number of reads is $total_reads
bedtools multicov -bams $bam -bed $input |perl -alne '{$len=$F[2]-$F[1];if($len <1 ){print "$.\t$F[4]\t0" }else{$rpkm=(1000000000*$F[4]/($len* $ENV{total_reads}));print "$.\t$F[4]\t$rpkm"}}' > /xtdisk/xiaojf_group/lumm/monkey/bam/bam/rpkm/${sample}.rpkm.txt
done


cd /xtdisk/xiaojf_group/lumm/monkey/bam/bam/Liver_bam
input=/xtdisk/xiaojf_group/lumm/monkey/bam/bam/peaks/Monkey-Liver_peaks.mRNA.txt
for bam in L-YF1_INPUT_hisat2_MAPQ20.sorted.bam L-YM1_INPUT_hisat2_MAPQ20.sorted.bam L-YF1_IP_hisat2_MAPQ20.sorted.bam L-YM1_IP_hisat2_MAPQ20.sorted.bam
do
file=$(basename $bam )
sample=${file%%.*}
echo $sample
export total_reads=$(/software/biosoft/software/samtools-1.9/samtools idxstats $bam|awk -F '\t' '{s+=$3}END{print s}')
echo The number of reads is $total_reads
bedtools multicov -bams $bam -bed $input |perl -alne '{$len=$F[2]-$F[1];if($len <1 ){print "$.\t$F[4]\t0" }else{$rpkm=(1000000000*$F[4]/($len* $ENV{total_reads}));print "$.\t$F[4]\t$rpkm"}}' > /xtdisk/xiaojf_group/lumm/monkey/bam/bam/rpkm/${sample}.rpkm.txt
done



#paste.sh

cd /xtdisk/xiaojf_group/lumm/monkey/bam/bam/rpkm/

for file in M-*_hisat2_MAPQ20.rpkm.txt
do
awk '{print $3}' ${file} > ${file}.new
done

paste *.txt.new > Monkey-Muscle_merge_peak_rpkm.txt
ls *.txt.new|less -S 
rm -f *.txt.new


for file in H-*_hisat2_MAPQ20.rpkm.txt
do 
awk '{print $3}' ${file} > ${file}.new
done

paste *.txt.new > Monkey-Heart_merge_peak_rpkm.txt
ls *.txt.new|less -S 
rm -f *.txt.new


for file in L-*_hisat2_MAPQ20.rpkm.txt
do 
awk '{print $3}' ${file} > ${file}.new
done

paste *.txt.new > Monkey-Liver_merge_peak_rpkm.txt
ls *.txt.new|less -S 
rm -f *.txt.new



awk '{print log($2+1)/log(2)-log($1+1)/log(2)"\t"log($4+1)/log(2)-log($3+1)/log(2)}' Monkey-Muscle_merge_peak_rpkm.txt > tmp.txt
paste /xtdisk/xiaojf_group/lumm/monkey/bam/bam/peaks/Monkey-Muscle_peaks.mRNA.txt tmp.txt >Monkey-Muscle_merge_peakintensity.txt
rm tmp.txt

awk '{print log($2+1)/log(2)-log($1+1)/log(2)"\t"log($4+1)/log(2)-log($3+1)/log(2)}' Monkey-Heart_merge_peak_rpkm.txt > tmp.txt
paste /xtdisk/xiaojf_group/lumm/monkey/bam/bam/peaks/Monkey-Heart_peaks.mRNA.txt tmp.txt >Monkey-Heart_merge_peakintensity.txt
rm tmp.txt

awk '{print log($2+1)/log(2)-log($1+1)/log(2)}' Monkey-Liver_merge_peak_rpkm.txt > tmp.txt
paste /xtdisk/xiaojf_group/lumm/monkey/bam/bam/peaks/Monkey-Liver_peaks.mRNA.txt tmp.txt >Monkey-Liver_merge_peakintensity.txt
rm tmp.txt





