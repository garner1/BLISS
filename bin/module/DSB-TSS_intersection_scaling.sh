#!/usr/bin/env bash

dsb1=$1				# full path to umiCount bed file
dsb2=$2				# full path to umiCount bed file
tss=~/Work/pipelines/data/TSS_uniq_chr-loc-gene.bed

for min in $(seq 1 10); do
    echo "UMI threshold:" $min
    name1=$(echo $dsb1 | cut -d'/' -f8 | cut -d'_' -f2)
    cat $dsb1 | awk -v min="$min" '$4>=min' | 
    bedtools window -w 5000 -a $tss -b - | cut -f4- |LC_ALL=C uniq |
    datamash --group 1 sum 5 > dsb-tss_"$name1"_"$min".tsv

    name2=$(echo $dsb2 | cut -d'/' -f8 | cut -d'_' -f2)
    cat $dsb2 | awk -v min="$min" '$4>=min' |
    bedtools window -w 5000 -a $tss -b - | cut -f4- |LC_ALL=C uniq |
    datamash --group 1 sum 5 > dsb-tss_"$name2"_"$min".tsv

    echo "Number of TSS seen only in dsb1:" $(join -v 1 dsb-tss_"$name1"_"$min".tsv dsb-tss_"$name2"_"$min".tsv | wc -l)
    echo "Number of TSS seen only in dsb2:" $(join -v 2 dsb-tss_"$name1"_"$min".tsv dsb-tss_"$name2"_"$min".tsv | wc -l)
    echo "Number of TSS shared by dsb1 and dsb2:" $(join dsb-tss_"$name1"_"$min".tsv dsb-tss_"$name2"_"$min".tsv | wc -l)
    echo
done
