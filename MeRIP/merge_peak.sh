perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./peaks/L-YM1_peaks_high-confidence_sort_chr.bedgraph -i2 ./peaks/L-YM2_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/L-YM1-YM2_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./peaks/L-YM3_peaks_high-confidence_sort_chr.bedgraph -i2 ./peaks/L-YM4_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/L-YM3-YM4_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 /data/maq/MacFas/merge_peak/L-YF1_meRIP_peaks_high-confidence_sort_chr.bedgraph -i2 ./peaks/L-YF2_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/L-YF1-YF2_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./peaks/L-YF3_peaks_high-confidence_sort_chr.bedgraph -i2 ./peaks/L-YF4_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/L-YF3-YF4_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/L-YM1-YM2_peaks.txt -i2 ./merge_peaks/L-YM3-YM4_peaks.txt -o ./merge_peaks/L-YM1234_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/L-YF1-YF2_peaks.txt -i2 ./merge_peaks/L-YF3-YF4_peaks.txt -o ./merge_peaks/L-YF1234_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/L-YM1234_peaks.txt -i2 ./merge_peaks/L-YF1234_peaks.txt -o ./merge_peaks/L_Y_peaks.txt

perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 /data/maq/MacFas/merge_peak/L-OM1_meRIP_peaks_high-confidence_sort_chr.bedgraph -i2 ./peaks/L-OM2_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/L-OM1-OM2_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./peaks/L-OM3_peaks_high-confidence_sort_chr.bedgraph -i2 ./peaks/L-OM4_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/L-OM3-OM4_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 /data/maq/MacFas/merge_peak/L-OF1_meRIP_peaks_high-confidence_sort_chr.bedgraph -i2 ./peaks/L-OF2_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/L-OF1-OF2_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./peaks/L-OF3_peaks_high-confidence_sort_chr.bedgraph -i2 ./peaks/L-OF4_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/L-OF3-OF4_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/L-OM1-OM2_peaks.txt -i2 ./merge_peaks/L-OM3-OM4_peaks.txt -o ./merge_peaks/L-OM1234_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/L-OF1-OF2_peaks.txt -i2 ./merge_peaks/L-OF3-OF4_peaks.txt -o ./merge_peaks/L-OF1234_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/L-OM1234_peaks.txt -i2 ./merge_peaks/L-OF1234_peaks.txt -o ./merge_peaks/L_O_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/L_O_peaks.txt -i2 ./merge_peaks/L_Y_peaks.txt -o ./merge_peaks/L_all_peaks.txt

perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 /data/maq/MacFas/merge_peak/M-YM1_meRIP_peaks_high-confidence_sort_chr.bedgraph -i2 /data/maq/MacFas/merge_peak/M-YM2_meRIP_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/M-YM1-YM2_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./peaks/M-YM3_peaks_high-confidence_sort_chr.bedgraph -i2 ./peaks/M-YM4_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/M-YM3-YM4_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 /data/maq/MacFas/merge_peak/M-YF1_meRIP_peaks_high-confidence_sort_chr.bedgraph -i2 /data/maq/MacFas/merge_peak/M-YF2_meRIP_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/M-YF1-YF2_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./peaks/M-YF3_peaks_high-confidence_sort_chr.bedgraph -i2 ./peaks/M-YF4_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/M-YF3-YF4_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/M-YM1-YM2_peaks.txt -i2 ./merge_peaks/M-YM3-YM4_peaks.txt -o ./merge_peaks/M-YM1234_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/M-YF1-YF2_peaks.txt -i2 ./merge_peaks/M-YF3-YF4_peaks.txt -o ./merge_peaks/M-YF1234_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/M-YM1234_peaks.txt -i2 ./merge_peaks/M-YF1234_peaks.txt -o ./merge_peaks/M_Y_peaks.txt

perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 /data/maq/MacFas/merge_peak/M-OM1_meRIP_peaks_high-confidence_sort_chr.bedgraph -i2 /data/maq/MacFas/merge_peak/M-OM2_meRIP_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/M-OM1-OM2_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./peaks/M-OM3_peaks_high-confidence_sort_chr.bedgraph -i2 ./peaks/M-OM4_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/M-OM3-OM4_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 /data/maq/MacFas/merge_peak/M-OF1_meRIP_peaks_high-confidence_sort_chr.bedgraph -i2 /data/maq/MacFas/merge_peak/M-OF2_meRIP_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/M-OF1-OF2_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./peaks/M-OF3_peaks_high-confidence_sort_chr.bedgraph -i2 ./peaks/M-OF4_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/M-OF3-OF4_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/M-OM1-OM2_peaks.txt -i2 ./merge_peaks/M-OM3-OM4_peaks.txt -o ./merge_peaks/M-OM1234_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/M-OF1-OF2_peaks.txt -i2 ./merge_peaks/M-OF3-OF4_peaks.txt -o ./merge_peaks/M-OF1234_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/M-OM1234_peaks.txt -i2 ./merge_peaks/M-OF1234_peaks.txt -o ./merge_peaks/M_O_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/M_O_peaks.txt -i2 ./merge_peaks/M_Y_peaks.txt -o ./merge_peaks/M_all_peaks.txt

perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 /data/maq/MacFas/merge_peak/H-OM1_meRIP_peaks_high-confidence_sort_chr.bedgraph -i2 ./peaks/H-OM2_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/H-OM1-OM2_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./peaks/H-OM3_peaks_high-confidence_sort_chr.bedgraph -i2 ./peaks/H-OM4_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/H-OM3-OM4_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/H-OM1-OM2_peaks.txt -i2 ./merge_peaks/H-OM3-OM4_peaks.txt -o ./merge_peaks/H-OM1234_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 /data/maq/MacFas/merge_peak/H-OF1_meRIP_peaks_high-confidence_sort_chr.bedgraph -i2 ./merge_peaks/H-OM1234_peaks.txt -o ./merge_peaks/H-OM1234-OF1_peaks.txt

perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 /data/maq/MacFas/merge_peak/H-YF2_meRIP_peaks_high-confidence_sort_chr.bedgraph -i2 /data/maq/MacFas/merge_peak/H-YM3_meRIP_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/H-YF2-YM3_peaks.txt
#perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./peaks/H-YF4_peaks_high-confidence_sort_chr.bedgraph -i2 ./merge_peaks/H-YF2-YM3_peaks.txt -o ./merge_peaks/H-Y_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./peaks/H-YF4_peaks_high-confidence_sort_chr.bedgraph -i2 ./merge_peaks/H-YF2-YM3_peaks.txt -o ./merge_peaks/H-YF2-YM3-YF4_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./peaks/H-YF1_peaks_high-confidence_sort_chr.bedgraph -i2 ./peaks/H-YM2_peaks_high-confidence_sort_chr.bedgraph -o ./merge_peaks/H-YF1-YM2_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/H-YF2-YM3-YF4_peaks.txt -i2 ./merge_peaks/H-YF1-YM2_peaks.txt -o ./merge_peaks/H-Y_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/H-OM1234-OF1_peaks.txt -i2 ./merge_peaks/H-Y_peaks.txt -o ./merge_peaks/H_all_peaks.txt

perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/H_all_peaks.txt -i2 ./merge_peaks/L_all_peaks.txt -o ./merge_peaks/H-L_all_peaks.txt
perl /data/maq/MacFas/merge_peak/20180423_merge_peaks_v2.pl -i1 ./merge_peaks/H-L_all_peaks.txt -i2 ./merge_peaks/M_all_peaks.txt -o ./merge_peaks/H-L-M_all_peaks.txt

nohup /data/software/bedtools2-2.25.0/bin/intersectBed -f 0.5 -wo -a /data/yuzh/monkey/merge_peaks/H-L-M_all_peaks.txt -b /data/maq/MacFas/20180307_Ensembl_annotatation_ref/Macaca_fascicularis.ensembl.mRNA.bed | awk '{print $1"\t"$2"\t"$3}' > H-L-M_all_peaks_mRNA.txt 

nohup /data/software/bedtools2-2.25.0/bin/intersectBed -f 0.5 -wo -a young_old_peak.bed -b /data/maq/MacFas/20180307_Ensembl_annotatation_ref/Macaca_fascicularis.ensembl.mRNA.bed > young_old_peak_gene.txt &

nohup /data/software/bedtools2-2.25.0/bin/intersectBed -f 0.5 -wo -a H_all_peaks.txt -b /data/maq/MacFas/20180307_Ensembl_annotatation_ref/Macaca_fascicularis.ensembl.mRNA.bed | awk '{print $1"\t"$2"\t"$3"\t"$8}' | uniq > H_all_peaks_mRNA.txt 
nohup /data/software/bedtools2-2.25.0/bin/intersectBed -f 0.5 -wo -a L_all_peaks.txt -b /data/maq/MacFas/20180307_Ensembl_annotatation_ref/Macaca_fascicularis.ensembl.mRNA.bed | awk '{print $1"\t"$2"\t"$3"\t"$8}' | uniq > L_all_peaks_mRNA.txt 
nohup /data/software/bedtools2-2.25.0/bin/intersectBed -f 0.5 -wo -a M_all_peaks.txt -b /data/maq/MacFas/20180307_Ensembl_annotatation_ref/Macaca_fascicularis.ensembl.mRNA.bed | awk '{print $1"\t"$2"\t"$3"\t"$8}' | uniq > M_all_peaks_mRNA.txt 
