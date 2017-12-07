#!/usr/bin/env bash

loc=$1				# {body, tss} if to look at all gene body or tss only
ref1=$2				# ~/Work/pipelines/data/TSS_mm9__gene-chr-start_sorted.bed 
ref2=$3				# ~/Work/pipelines/data/TSS_mm9.bed 
dsb=$4				# full path to umiCount bed file
expr=$5				# ~/Work/pipelines/data/liver1-zy4.gene.expr
percent=$6                      # a positive integer <= 50
min=1

~/Work/pipelines/bliss/bin/module/find_TSS.sh $expr $percent $ref1 

if [ $loc = "tss"  ]; then
    cat $ref2 | awk '{FS=OFS="\t";print $4,$3-$2}' | datamash -s -g 1 mean 2 > gene_len
    cat $dsb|awk -v min="$min" '$4 >= min' | bedtools window -w 500 -a tss_top -b - -c | datamash -s -g 4 mean 5 > gene_dsb
    join gene_len gene_dsb | tr ' ,' '\t.' | cut -f2- > gene_len_dsb__TSS_perc"$percent".bed
fi


if [ $loc = "body" ]; then
    cut -f-4 $ref2 | sort -k4,4 > loc_gene
    join -1 4 -2 4 loc_gene tss_top | awk '{OFS="\t";print $2,$3,$4,$1}' > gene_body
    cat $dsb|awk -v min="$min" '$4 >= min' | bedtools window -a gene_body -b - -c | cut -f4-|sort -k1,1 > gene_dsb
    cat $ref2 | awk '{FS=OFS="\t";print $4,$3-$2}' | datamash -s -g 1 mean 2 > gene_len
    join gene_len gene_dsb | awk '{print $2,$3/$2}' | awk '$2>0' | 
    tr ' ,' '\t.' > gene_len_dsb__BODY_perc"$percent".bed
fi

rm -f gene_{len,dsb} tss_{top,bot} loc_gene gene_{body,dsb} norm myfile_{bot,top}
