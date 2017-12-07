#!/usr/bin/env bash

loc=$1	   # {tss,body}
ref1=$2				# ~/Work/pipelines/data/TSS_mm9__gene-chr-start_sorted.bed 
ref2=$3				# ~/Work/pipelines/data/TSS_mm9.bed 
dsb=$4				# full path to umiCount bed file
expr=$5				# ~/Work/pipelines/data/liver1-zy4.gene.expr
percent=$6                      # a positive integer <= 50
halfWindow=$7			# half-size of the window around the TSS
min=1				# consider or not location with only 1 UMI {1,2}

~/Work/pipelines/bliss/bin/module/find_TSS.sh $expr $percent $ref1 

if [ $loc = "tss"  ]; then
    # for halfWindow in $(seq 0 500 5000);do
    # 	echo $halfWindow
    # 	cat myfile_top | awk '{FS=OFS="\t";print $1,$6}' | tr '.' ','|datamash -s -g 1 mean 2 > gene_expr
    # 	cat $dsb | awk -v min="$min" '$4 >= min' | bedtools window -l $halfWindow -r 0 -a tss_top -b - -c | datamash mean 5 | 
    # 	awk -v win=$halfWindow '{OFS="\t"; print win,$1}' >> top_left__win_dsb.bed & pid1=$!
    # 	cat $dsb | awk -v min="$min" '$4 >= min' | bedtools window -r $halfWindow -l 0 -a tss_top -b - -c | datamash mean 5 | 
    # 	awk -v win=$halfWindow  '{OFS="\t"; print win,$1}' >> top_right__win_dsb.bed & pid2=$!
    # 	cat $dsb | awk -v min="$min" '$4 >= min' | bedtools window -l $halfWindow -r 0 -a tss_bot -b - -c | datamash mean 5 | 
    # 	awk -v win=$halfWindow  '{OFS="\t"; print win,$1}' >> bot_left__win_dsb.bed & pid3=$!
    # 	cat $dsb | awk -v min="$min" '$4 >= min' | bedtools window -r $halfWindow -l 0 -a tss_bot -b - -c | datamash mean 5 | 
    # 	awk -v win=$halfWindow  '{OFS="\t"; print win,$1}' >> bot_right__win_dsb.bed & pid4=$!
    # 	wait $pid1
    # 	wait $pid2
    # 	wait $pid3
    # 	wait $pid4
    # done
    cat $dsb | awk -v min="$min" '$4 >= min' | bedtools window -w $halfWindow -a tss_top -b - -c | datamash -s -g 4 mean 5 > gene_dsb
    join gene_expr gene_dsb | tr ' ,' '\t.' | cut -f2- > gene_expr_dsb__TSS_perc"$percent".bed
fi

if [ $loc = "body" ]; then
    cat myfile_top | awk '{FS=OFS="\t";print $1,$6}' | tr '.' ','|datamash -s -g 1 mean 2 > gene_expr
    cut -f-4 $ref2 | sort -k4,4 > loc_gene
    join -1 4 -2 4 loc_gene tss_top | awk '{OFS="\t";print $2,$3,$4,$1}' > gene_body
    cat $dsb|awk -v min="$min" '$4 >= min' | bedtools window -w $halfWindow -a gene_body -b - -c | cut -f4-|sort -k1,1 > gene_dsb
    join gene_expr gene_dsb | awk '{print $2,$3}' | awk '$2>0' | 
    tr ' ,' '\t.' > gene_expr_dsb__BODY_perc"$percent".bed
fi

# rm -f gene_{expr,dsb} tss_{top,bot} loc_gene gene_{body,dsb} norm myfile_{bot,top}
