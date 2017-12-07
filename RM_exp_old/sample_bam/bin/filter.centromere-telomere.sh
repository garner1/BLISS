#!/usr/bin/env bash

quality=$1
out=$2
lines=$3

echo "Filter out centromeres and telomeres"
file="$out"/reads"$lines"_q"$quality".bed 
ref=~/Work/pipelines/hg19-telomere-centromere-telomere.bed
bedtools intersect -v -a $file -b $ref > $out/chr-loc-strand-umi_q"$quality"_reads"$lines"
