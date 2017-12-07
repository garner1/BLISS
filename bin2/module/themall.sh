#!/usr/bin/env bash

# for line in $(seq 8);do
#     rm -f rm90_Sregion_numb"$line"_control-treated.bed
#     head -"$line" ~/Work/pipelines/data/IGH_locus_Sregions.bed | tail -1 > myfeature
#     ./pvalue_IGH_Sregions.sh myfeature /home/garner1/Work/dataset/bliss/RM96_BICRO27/outdata_*/q10_*count*bed 1000 >> rm96_Sregion_numb"$line"_control-treated.bed
# done

# ./pvalue_IGH_Sregions.sh ~/Work/pipelines/BLISS/EDA_summary/data/IGH_locus_Sregions_mu-gamma-alfa.bed /home/garner1/Work/dataset/bliss/RM96_BICRO27/outdata_*/q10_*count*bed 1000 >> rm96_Sregion_mu-gamma-alpha_control-treated.bed
# ./pvalue_IGH_Sregions.sh ~/Work/pipelines/BLISS/EDA_summary/data/Hox_genes.bed /home/garner1/Work/dataset/bliss/RM96_BICRO27/outdata_*/q10_*count*bed 1000 >> rm96_Hox_genes__control-treated.bed

# L=$(cat ~/Work/pipelines/BLISS/EDA_summary/data/Upregulated_genes.bed | wc -l)
# for line in $(seq "$L");do
#     head -"$line" ~/Work/pipelines/BLISS/EDA_summary/data/Upregulated_genes.bed | tail -1 > myfeature
#     ./pvalue_IGH_Sregions.sh myfeature /home/garner1/Work/dataset/bliss/RM96_BICRO27/outdata_*/q10_*count*bed 1000 >> rm96_Upregulated_genes_numb"$line"__control-treated.bed    
# done

# L=$(cat ~/Work/pipelines/BLISS/EDA_summary/data/NoChange_genes.bed | wc -l)
# for line in $(seq "$L");do
#     head -"$line" ~/Work/pipelines/BLISS/EDA_summary/data/NoChange_genes.bed | tail -1 > myfeature
#     ./pvalue_IGH_Sregions.sh myfeature /home/garner1/Work/dataset/bliss/RM96_BICRO27/outdata_*/q10_*count*bed 1000 >> rm96_NoChange_genes_numb"$line"__control-treated.bed    
# done

# L=$(cat ~/Work/pipelines/BLISS/EDA_summary/data/Downregulated_genes.bed | wc -l)
# for line in $(seq "$L");do
#     head -"$line" ~/Work/pipelines/BLISS/EDA_summary/data/Downregulated_genes.bed | tail -1 > myfeature
#     ./pvalue_IGH_Sregions.sh myfeature /home/garner1/Work/dataset/bliss/RM96_BICRO27/outdata_*/q10_*count*bed 1000 >> rm96_Downregulated_genes_numb"$line"__control-treated.bed    
# done

# L=$(cat ~/Work/pipelines/BLISS/EDA_summary/data/Hox_genes.bed | wc -l)
# for line in $(seq "$L");do
#     head -"$line" ~/Work/pipelines/BLISS/EDA_summary/data/Hox_genes.bed | tail -1 > myfeature
#     ./pvalue_IGH_Sregions.sh myfeature /home/garner1/Work/dataset/bliss/RM96_BICRO27/outdata_*/q10_*count*bed 1000 >> rm96_Hox_genes_numb"$line"__control-treated.bed    
# done


# ./DSB-TSS_profile.sh 500 0 500 5000 ~/liver1-zy4.TSS_RPKMtop10_GENEID.bed ~/Work/dataset/bliss/RM91*/outdata_*/q10_chr-loc-countDifferentUMI.bed left_top_rm91.dat
# ./DSB-TSS_profile.sh 0 500 500 5000 ~/liver1-zy4.TSS_RPKMtop10_GENEID.bed ~/Work/dataset/bliss/RM91*/outdata_*/q10_chr-loc-countDifferentUMI.bed right_top_rm91.dat
# ./DSB-TSS_profile.sh 500 0 500 5000 ~/liver1-zy4.TSS_RPKMbot10_GENEID.bed ~/Work/dataset/bliss/RM91*/outdata_*/q10_chr-loc-countDifferentUMI.bed left_bottom_rm91.dat
# ./DSB-TSS_profile.sh 0 500 500 5000 ~/liver1-zy4.TSS_RPKMbot10_GENEID.bed ~/Work/dataset/bliss/RM91*/outdata_*/q10_chr-loc-countDifferentUMI.bed right_bottom_rm91.dat

./DSB-TSS_profile.sh 500 0 500 5000 ~/liver1-zy4.TSS_RPKMtop10_GENEID.bed ~/Work/dataset/bliss/RM102*/outdata_*/q10_chr-loc-countDifferentUMI.bed left_top_rm102.dat
./DSB-TSS_profile.sh 0 500 500 5000 ~/liver1-zy4.TSS_RPKMtop10_GENEID.bed ~/Work/dataset/bliss/RM102*/outdata_*/q10_chr-loc-countDifferentUMI.bed right_top_rm102.dat
./DSB-TSS_profile.sh 500 0 500 5000 ~/liver1-zy4.TSS_RPKMbot10_GENEID.bed ~/Work/dataset/bliss/RM102*/outdata_*/q10_chr-loc-countDifferentUMI.bed left_bottom_rm102.dat
./DSB-TSS_profile.sh 0 500 500 5000 ~/liver1-zy4.TSS_RPKMbot10_GENEID.bed ~/Work/dataset/bliss/RM102*/outdata_*/q10_chr-loc-countDifferentUMI.bed right_bottom_rm102.dat

# ~/Work/pipelines/BLISS/bin/module/coverage.sh 50000 outdata_ACGACCGC/q10_chr-loc-countDifferentUMI.bed mm9
# ~/Work/pipelines/BLISS/bin/module/coverage.sh 50000 outdata_CATCAATC/q10_chr-loc-countDifferentUMI.bed mm9
# ~/Work/pipelines/BLISS/bin/module/coverage.sh 50000 outdata_CATCATCC/q10_chr-loc-countDifferentUMI.bed mm9
# ~/Work/pipelines/BLISS/bin/module/coverage.sh 50000 outdata_GTCGTATC/q10_chr-loc-countDifferentUMI.bed mm9
# ~/Work/pipelines/BLISS/bin/module/coverage.sh 50000 outdata_GTCGTCGC/q10_chr-loc-countDifferentUMI.bed mm9
# ~/Work/pipelines/BLISS/bin/module/coverage.sh 50000 outdata_GTCGTTCC/q10_chr-loc-countDifferentUMI.bed mm9

# parallel "bedtools window -a /home/garner1/Work/pipelines/BLISS/EDA_summary/data/liver1-zy4.TSS.expr__LOC-FPKM-ID -b /home/garner1/Work/dataset/bliss/rm84/outdata_{}/q10_chr-loc-countDifferentUMI.bed -c > liver1-zy4.TSS.expr__LOC-FPKM-ID-DSB_rm84{} " ::: ACGACCGC CATCAATC CATCATCC GTCGTATC GTCGTCGC GTCGTTCC

# bedtools window -a /home/garner1/Work/pipelines/BLISS/EDA_summary/data/mESC-zy27.TSS.expr__LOC-FPKM-ID -b /home/garner1/Work/dataset/bliss/tk30/outdata_ACGACATC/q10_chr-loc-countDifferentUMI.bed -c > mESC-zy27.TSS.expr__LOC-FPKM-ID-DSB_tk30
# bedtools window -a /home/garner1/Work/pipelines/BLISS/EDA_summary/data/mESC-zy27.TSS.expr__LOC-FPKM-ID -b /home/garner1/Work/dataset/bliss/tk31/outdata_GTCGTCGC/q10_chr-loc-countDifferentUMI.bed -c > mESC-zy27.TSS.expr__LOC-FPKM-ID-DSB_tk31
# bedtools window -a /home/garner1/Work/pipelines/BLISS/EDA_summary/data/mESC-zy27.TSS.expr__LOC-FPKM-ID -b /home/garner1/Work/dataset/bliss/tk32/outdata/q10_chr-loc-countDifferentUMI.bed -c > mESC-zy27.TSS.expr__LOC-FPKM-ID-DSB_tk32

# parallel "bedtools window -a /home/garner1/Work/pipelines/BLISS/EDA_summary/data/mESC-zy27.TSS.expr__LOC-FPKM-ID -b /home/garner1/Work/dataset/bliss/rm84/outdata_{}/q10_chr-loc-countDifferentUMI.bed -c > mESC-zy27.TSS.expr__LOC-FPKM-ID-DSB_rm84{} " ::: ACGACCGC CATCAATC CATCATCC GTCGTATC GTCGTCGC GTCGTTCC

# bedtools window -a /home/garner1/Work/pipelines/BLISS/EDA_summary/data/liver1-zy4.TSS.expr__LOC-FPKM-ID -b /home/garner1/Work/dataset/bliss/tk30/outdata_ACGACATC/q10_chr-loc-countDifferentUMI.bed -c > liver1-zy4.TSS.expr__LOC-FPKM-ID-DSB_tk30
# bedtools window -a /home/garner1/Work/pipelines/BLISS/EDA_summary/data/liver1-zy4.TSS.expr__LOC-FPKM-ID -b /home/garner1/Work/dataset/bliss/tk31/outdata_GTCGTCGC/q10_chr-loc-countDifferentUMI.bed -c > liver1-zy4.TSS.expr__LOC-FPKM-ID-DSB_tk31
# bedtools window -a /home/garner1/Work/pipelines/BLISS/EDA_summary/data/liver1-zy4.TSS.expr__LOC-FPKM-ID -b /home/garner1/Work/dataset/bliss/tk32/outdata/q10_chr-loc-countDifferentUMI.bed -c > liver1-zy4.TSS.expr__LOC-FPKM-ID-DSB_tk32

# parallel -k "~/Work/pipelines/BLISS/bin/module/entropy.sh {}|paste - - -" ::: ~/rm84_GTCGTCGC_TSS-DSBcount.tsv ~/rm84_ACGACCGC_TSS-DSBcount.tsv ~/rm84_CATCAATC_TSS-DSBcount.tsv ~/rm84_GTCGTATC_TSS-DSBcout.tsv ~/rm84_CATCATCC_TSS-DSBcount.tsv ~/rm84_GTCGTTCC_TSS-DSBcount.tsv # output: DSBcountAROUNDtss numbDETECTEDgenes DifferentiationScore(MAX-ENT)

# parallel -k "bedtools intersect -a /home/garner1/Work/pipelines/BLISS/EDA_summary/data/mESC-zy27.gene.expr__LOC-FPKM-ID -b /home/garner1/Work/dataset/bliss/rm84/outdata_{}/q10_chr-loc-countDifferentUMI.bed -c > mESC-zy27.gene.expr__LOC-FPKM-ID-DSB_{} " ::: ACGACCGC CATCAATC CATCATCC GTCGTATC GTCGTCGC GTCGTTCC

# bedtools intersect -a /home/garner1/Work/pipelines/BLISS/EDA_summary/data/liver1-zy4.gene.expr__LOC-FPKM-ID -b /home/garner1/Work/dataset/bliss/tk30/outdata_ACGACATC/q10_chr-loc-countDifferentUMI.bed -c > liver1-zy4.gene.expr__LOC-FPKM-ID-DSB_tk30

# bedtools intersect -a /home/garner1/Work/pipelines/BLISS/EDA_summary/data/liver1-zy4.gene.expr__LOC-FPKM-ID -b /home/garner1/Work/dataset/bliss/tk31/outdata_GTCGTCGC/q10_chr-loc-countDifferentUMI.bed -c > liver1-zy4.gene.expr__LOC-FPKM-ID-DSB_tk31

# bedtools intersect -a /home/garner1/Work/pipelines/BLISS/EDA_summary/data/liver1-zy4.gene.expr__LOC-FPKM-ID -b /home/garner1/Work/dataset/bliss/tk32/outdata/q10_chr-loc-countDifferentUMI.bed -c > liver1-zy4.gene.expr__LOC-FPKM-ID-DSB_tk32   








