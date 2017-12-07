#!/usr/bin/env bash

dsbT=$1
dsbNT=$2
ref=$3
win=$4

bedtools window -w $win -a $ref -b $dsbT | cut -f-4 | LC_ALL=C sort -u > ref-and-t & pid1=$!
bedtools window -w $win -a $ref -b $dsbNT | cut -f-4 | LC_ALL=C sort -u  > ref-and-nt & pid2=$!
wait $pid1
wait $pid2

bedtools intersect -a ref-and-t -b ref-and-nt -wa > ref-t-nt

bedtools window -w $win -a ref-t-nt -b $dsbT | cut -f-4 | LC_ALL=C uniq -c | awk '{print $2"_"$3,$5,$1}' | LC_ALL=C sort -k1,1 > outT & pid1=$!
bedtools window -w $win -a ref-t-nt -b $dsbNT | cut -f-4 | LC_ALL=C uniq -c | awk '{print $2"_"$3,$5,$1}' | LC_ALL=C sort -k1,1 > outNT & pid2=$!
wait $pid1
wait $pid2

normT=`cat $dsbT|wc -l`
normNT=`cat $dsbNT|wc -l`

LC_ALL=C join outT outNT | tr "_" " " | awk -v normT="$normT" -v normNT="$normNT" '{print $1,$2,$3,$4/normT,$6/normNT}' | awk '{print $0,$4/$5}' | tr " " "\t" > ~/loc-countT-countNT-pT-pNT-pFC.txt


