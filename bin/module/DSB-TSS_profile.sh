#!/usr/bin/env bash

left=$1				# 0 || step
right=$2			# 0 || step
step=$3				# step in spanning tss neightbourood
max=$4				# max size of the window
tss=$5				# absolute path to list of transcription start sites
dsb=$6				# abosolute path to list of dsb for a given dataset
out=$7				# name of output file

if [ $left == 0 ];then
    bedtools window -a $tss -b $dsb -r $right -l $left | cut -f 4-6 > overlap.bed
    bedtools subtract -a $dsb -b overlap.bed -A > newdsb
    
    rm -f $out
    while [[ ($(cat newdsb|wc -l) -gt 0) &&  ($right -lt $max)  ]]
    do
    	echo $right
    	echo $(cat overlap.bed|wc -l) >> $out
    	((right = right + $step))
    	bedtools window -a $tss -b newdsb -r $right -l $left| cut -f 4-6 > overlap.bed
    	bedtools subtract -a newdsb -b overlap.bed -A > aux
    	mv aux newdsb
    done
    rm overlap.bed newdsb 
    nl -i $step -v $step $out > ~/$out
    rm -f $out
fi
if [ $right == 0 ];then
    bedtools window -a $tss -b $dsb -r $right -l $left| cut -f 4-6 > overlap.bed
    bedtools subtract -a $dsb -b overlap.bed -A > newdsb
    
    rm -f $out
    while [[ ($(cat newdsb|wc -l) -gt 0) && ($left -lt $max)  ]]
    do
	echo $left
	echo $(cat overlap.bed|wc -l) >> $out
	((left = left + $step))
	bedtools window -a $tss -b newdsb -r $right -l $left| cut -f 4-6 > overlap.bed
	bedtools subtract -a newdsb -b overlap.bed -A > aux
	mv aux newdsb
    done
    rm overlap.bed newdsb 
    nl -i $step -v $step $out |awk '{print -$1,$2}' > ~/$out
    rm -f $out
fi
