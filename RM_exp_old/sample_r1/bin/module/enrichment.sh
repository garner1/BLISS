#!/usr/bin/env bash

dsbT=$1
dsbNT=$2
cutsite=$3
win=$4
word=$5

bedtools window -w $win -a $cutsite -b $dsbT | cut -f-3 | LC_ALL=C sort -u > "$word"_cut-inter-t & pid1=$!
bedtools window -w $win -a $cutsite -b $dsbNT | cut -f-3 | LC_ALL=C sort -u  > "$word"_cut-inter-nt & pid2=$!
wait $pid1
wait $pid2

bedtools intersect -a "$word"_cut-inter-t -b "$word"_cut-inter-nt -wa > "$word"_cut-t-nt

bedtools window -w $win -a "$word"_cut-t-nt -b $dsbT | cut -f-3 | LC_ALL=C uniq -c | awk '{print $2"_"$3,$1}' | LC_ALL=C sort -k1,1 > "$word"_outT & pid1=$!
bedtools window -w $win -a "$word"_cut-t-nt -b $dsbNT | cut -f-3 | LC_ALL=C uniq -c | awk '{print $2"_"$3,$1}' | LC_ALL=C sort -k1,1 > "$word"_outNT & pid2=$!
wait $pid1
wait $pid2

normT=`cat $dsbT|wc -l`
normNT=`cat $dsbNT|wc -l`

LC_ALL=C join "$word"_outT "$word"_outNT | tr "_" " " | awk -v normT="$normT" -v normNT="$normNT" '{print $1,$2,$3,$4,$3/normT,$4/normNT}' | awk -v word="$word" '{print $0,$5/$6,word}' | 
tr " " "\t" > ~/"$word"_loc-t-nt-pT-pNT-pFC.txt

rm "$word"_*

