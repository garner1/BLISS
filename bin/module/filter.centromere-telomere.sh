#!/usr/bin/env bash

experiment=$1
out=$2
outcontrol=$3
quality=$4
cutsite=$5

echo "Filter out centromeres and telomeres"
file=$out/_q"$quality".bed
ref=~/Work/pipelines/data/hg19-telomere-centromere-telomere.bed
bedtools intersect -v -a $file -b $ref > $out/chr-loc-strand-umi_q$quality

if [ ! -z "$cutsite" ]; then
    file=$outcontrol/_q"$quality".bed
    bedtools intersect -v -a $file -b $ref > $outcontrol/chr-loc-strand-umi_q$quality
fi
