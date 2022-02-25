cd /xtdisk/xiaojf_group/lumm/monkey/fastq
mkdir fastqc
for sam in M-YF1 M-YF2 M-YF3 M-YF4 M-YM1 M-YM2 M-YM3 M-YM4 M-OF1 M-OF2 M-OF3 M-OF4 M-OM1 M-OM2 M-OM3 M-OM4 L-YF1 L-YF2 L-YF3 L-YF4 L-YM1 L-YM2 L-YM3 L-YM4 L-OF1 L-OF2 L-OF3 L-OF4 L-OM1 L-OM2 L-OM3 L-OM4 H-YF1 H-YF2 H-YF4 H-YM2 H-YM3 H-OF1 H-OM1 H-OM2 H-OM3 H-OM4 
do 

cat  ${sam}_raw11.fastq   ${sam}_raw12.fastq > ${sam}_raw1.fastq
cat  ${sam}_raw21.fastq   ${sam}_raw22.fastq > ${sam}_raw2.fastq

/data/software/FastQC/fastqc ${sam}_raw1.fastq  -t 4 -o ./fastqc
/data/software/FastQC/fastqc ${sam}_raw2.fastq  -t 4 -o ./fastqc

java -jar /data/software/Trimmomatic-0.36/trimmomatic-0.36.jar PE -phred33 -trimlog logfile ${sam}_raw1.fastq ${sam}_raw2.fastq ${sam}_1-paired.fastq ${sam}_1-unpaired.fastq ${sam}_2-paired.fastq ${sam}_2-unpaired.fastq ILLUMINACLIP:/data/software/Trimmomatic-0.36/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

/data/software/FastQC/fastqc ${sam}_1-paired.fastq  -t 4 -o ./fastqc
/data/software/FastQC/fastqc ${sam}_2-paired.fastq  -t 4 -o ./fastqc

#mapping

hisat2=/data/software/hisat2-2.1.0

$hisat2/hisat2 -p 6 --dta -x /data/yuzh/hisat2-build/genome_tran -1 ${sam}_1-paired.fastq  -2 ${sam}_2-paired.fastq -S ${sam}_hisat2.sam 
#samtools
/data/software/samtools-1.8/samtools  view -bS -q 20  ${sam}_hisat2.sam > ${sam}_hisat2_MAPQ20.bam 
/data/software/samtools-1.8/samtools  sort ${sam}_hisat2_MAPQ20.bam -o  ${sam}_hisat2_MAPQ20.sorted.bam 
/data/software/samtools-1.8/samtools  index ${sam}_hisat2_MAPQ20.sorted.bam
/data/software/bedtools2-2.25.0/bin/intersectBed -abam ${sam}_hisat2_MAPQ20.sorted.bam  -b /data/yuzh/ref/hg19_genome_exon_uniq.bed > ${sam}_hisat2_MAPQ20.sorted.filter.bam  
