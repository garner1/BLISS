#!/usr/bin/env bash

out=$1
outcontrol=$2
quality=$3
cutsite=$4

ref=~/Work/pipelines/data/consensusBlacklist.bed

echo "Filter out blacklist"
file="$out"/chr-loc-strand-umi_q"$quality"
bedtools intersect -v -a $file -b $ref > $out/auxfiltered
mv $out/auxfiltered $file

if [ ! -z "$cutsite" ]; then
    file="$outcontrol"/chr-loc-strand-umi_q"$quality"
    bedtools intersect -v -a $file -b $ref > $outcontrol/auxfiltered
    mv $outcontrol/auxfiltered $file
fi
