#!/usr/bin/env bash

# SET THE FILES
tk32=/home/garner1/Work/dataset/bliss/tk32/outdata/q10_chr-loc-strand-umi-pcr
rm92=/home/garner1/Work/dataset/restseq/RM92_BICRO27/outdata/cutsite_dist_strand_qScore_UMI_count__GTCGTCGC_q1.bed

# FILTER WRT QUALITY
cat $rm92 | awk '$6>=10' > rm92
cp $tk32 tk32

./coverage.sh 100000 rm92 mm9
./coverage.sh 100000 tk32 mm9 

rm rm92 tk32
