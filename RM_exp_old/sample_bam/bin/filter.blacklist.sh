#!/usr/bin/env bash

quality=$1
out=$2
lines=$3

ref=~/Work/pipelines/consensusBlacklist.bed

echo "Filter out blacklist"
file=$out/chr-loc-strand-umi_q"$quality"_reads"$lines"
bedtools intersect -v -a $file -b $ref > "$out"/auxfiltered_q"$quality"_reads"$lines"
mv "$out"/auxfiltered_q"$quality"_reads"$lines" $file
