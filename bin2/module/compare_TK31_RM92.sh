#!/usr/bin/env bash

# SET THE FILES
tk31=/home/garner1/Work/dataset/bliss/tk31/outdata_GTCGTCGC/q10_chr-loc-strand-umi-pcr
rm92=/home/garner1/Work/dataset/restseq/RM92_BICRO27/outdata/cutsite_dist_strand_qScore_UMI_count__GTCGTCGC_q1.bed

# FILTER WRT QUALITY
cat $rm92 | awk '$6>=10' > rm92
cp $tk31 tk31

./coverage.sh 100000 rm92 mm9
./coverage.sh 100000 tk31 mm9 

rm rm92 tk31
