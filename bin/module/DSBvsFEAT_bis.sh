#!/usr/bin/env bash

dsb=$1	# full path to umiCount bed file
feature=$2	# full path to feature file ~/Work/pipelines/data/liver/liver.polII.peak.txt
genome=$3
sample_size=$4
output=$5

# PARSE THE FEAT FILE INTO A CHR-START-END-PEAK FORMAT FILE
cat $feature | awk '{FS=OFS="\t"; print $1,$2,$2+1}' > myfeat

# GET TOTAL NUMB OF DSB LOCATIONS
norma=$(cat $dsb|wc -l)

# GET THE PROBABILITY WEIGHT OF EACH FEATURE
cat $dsb | awk '$4>=2' | #FILTER LOCATION WITH A MIN NUMBER OF UMI
bedtools window -a myfeat -b - -c | datamash -s -g 1,2,3 mean 4 | tr ',' '.' | 
awk -v norma="$norma" '{print $4/norma}' > $output

rm -f mygenome myfeat 
