#!/usr/bin/env bash

filename=$1			# fasta file
pattern_file=$2
out_dir=$3

mkdir -p $out_dir

cat $filename | parallel --tmpdir $HOME/tmp --block 100M -k --pipe -L 2 "scan_for_matches $pattern_file - " > $out_dir/telomer.fa

