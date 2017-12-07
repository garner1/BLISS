#!/usr/bin/env bash

fileT=~/Work/dataset/asisiT/outdata/dsb-nohap.bed
fileNT=~/Work/dataset/asisiNT/outdata/dsb-nohap.bed

list=`echo {A,T,C,G}{A,T,C,G}{A,T,C,G}{A,T,C,G}`

for line in $(seq 1 64)
do
    sublist=`echo {A,T,C,G}{A,T,C,G}{A,T,C,G}{A,T,C,G} | fold -w20 | head -"$line" | tail -1`
    parallel ./enrichment.sh $fileT $fileNT ~/Work/silicoDigest/{}.bed 1000 {} ::: $sublist
done
