#!/usr/bin/env bash

dsb=$1				# full path to umiCount bed file
expr=$2				# ~/Work/pipelines/data/liver1-zy4.gene.expr
ref=$3				# ~/Work/pipelines/data/TSS_mm9__gene-chr-start_sorted.bed 
win=$4				# window around TSS
percentile=$5			# a positive integer <= 50

calc(){ awk "BEGIN{ printf (\"%.5e\\n\", $*) }" ;}

~/Work/pipelines/bliss/bin/module/find_TSS.sh $expr $percentile $ref 

for min in $(seq 1 2); do
    # echo "UMI threshold:" $min
    cat $dsb|awk -v min="$min" '$4 >= min'|bedtools window -w $win -a tss_bot -b - -c|datamash mean 5|tr ',' '.' > bot & pid1=$!
    cat $dsb|awk -v min="$min" '$4 >= min'|bedtools window -w $win -a tss_top -b - -c|datamash mean 5|tr ',' '.' > top & pid2=$!
    wait $pid1
    wait $pid2
    b=$(cat bot)
    t=$(cat top)
    ratio=$(calc $t/$b)
    # echo "The ratio between the numbers of DSB per TSS of the top and bottom 25% genes is:" $ratio
    echo $min $percentile $ratio $dsb
    rm bot top
done

rm tss_{top,bot}
rm myfile_{top,bot}
