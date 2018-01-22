#!/usr/bin/env bash

filename=$1			# input fasta file
pattern_file=$2			# pattern file for scan_for_matches
out_dir=$3			# dir where to store output from scan_for_matches

mkdir -p $out_dir

cat $filename | parallel --tmpdir $HOME/tmp --block 100M -k --pipe -L 2 "scan_for_matches $pattern_file - " > $out_dir/telomer.fa

cat telomer.fa  | grep -cw "A CCCTAA"
cat telomer.fa  | grep -cw "AA CCCTAA"
cat telomer.fa  | grep -cw "TAA CCCTAA"
cat telomer.fa  | grep -cw "CTAA CCCTAA"
cat telomer.fa  | grep -cw "CCTAA CCCTAA"
cat telomer.fa  | grep -cw "CCCTAA CCCTAA"
