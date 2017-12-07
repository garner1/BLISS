#!/usr/bin/env bash

dsb=$1
ref=$2
win=$3

norm=`cat $dsb|wc -l`

bedtools window -w $win -a $ref -b $dsb | cut -f-4 | LC_ALL=C uniq -c | awk '{print $2"_"$3,$1}' | 
tr "_" " " | awk -v norm="$norm" '{OFS="\t"}{print $1,$2,$3,$3/norm}'| LC_ALL=C sort -k4,4 > ~/loc-count-prob.txt



