#!/usr/bin/env bash

exp=$1
pattern=$2
barcode=$3
pos=$4

# for pos in $(seq 8)
# do
cat ~/Work/dataset/rm"$exp"/indata/r1.fa | parallel --tmpdir $HOME/tmp --block 100M -k --pipe -L 2 "scan_for_matches $pattern - " |
grep -v ">" | cut -d' ' -f1 | cut -c"$pos" | 
LC_ALL=C sort | LC_ALL=C uniq -c | 
awk '{print $2,$1}' | 
sort -k1,1 | grep -v "N" > ~/Desktop/RM"$exp"_"$barcode"_umi-stat-pos"$pos".csv
# done

