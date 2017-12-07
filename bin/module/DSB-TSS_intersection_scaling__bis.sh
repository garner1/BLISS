#!/usr/bin/env bash

dsb1=$1				# full path to umiCount bed file
dsb2=$2				# full path to umiCount bed file
tss=$3 				# full path to TSS loc-genesymb file

rm -f "$name2"_"$name1".dat "$name1"_"$name2".dat
for min in $(seq 1 10); do
    echo "UMI threshold:" $min
    name1=$(echo $dsb1 | cut -d'/' -f8 | cut -d'_' -f2)
    cat $dsb1 | awk -v min="$min" '$4>=min' | 
    bedtools window -w 1000 -a $tss -b - -c | datamash -g 4 sum 5 > dsb-tss_"$name1"_"$min".tsv

    name2=$(echo $dsb2 | cut -d'/' -f8 | cut -d'_' -f2)
    cat $dsb2 | awk -v min="$min" '$4>=min' |
    bedtools window -w 1000 -a $tss -b - -c | datamash -g 4 sum 5 > dsb-tss_"$name2"_"$min".tsv

    echo "Number of TSS seen only in dsb1:" $(join dsb-tss_"$name1"_"$min".tsv dsb-tss_"$name2"_"$min".tsv | awk '$2 > 0 && $3 == 0'| wc -l)
    echo "Number of TSS seen only in dsb2:" $(join dsb-tss_"$name1"_"$min".tsv dsb-tss_"$name2"_"$min".tsv | awk '$3 > 0 && $2 == 0'| wc -l)
    echo "Number of TSS shared by dsb1 and dsb2:" $(join dsb-tss_"$name1"_"$min".tsv dsb-tss_"$name2"_"$min".tsv | awk '$3 > 0 && $2 > 0'| wc -l)
    echo 
    echo $min $(join dsb-tss_"$name1"_"$min".tsv dsb-tss_"$name2"_"$min".tsv | awk '$2 > 0 && $3 == 0'| wc -l) >> "$name1"_"$name2".dat
    echo $min $(join dsb-tss_"$name1"_"$min".tsv dsb-tss_"$name2"_"$min".tsv | awk '$3 > 0 && $2 == 0'| wc -l) >> "$name2"_"$name1".dat
done
