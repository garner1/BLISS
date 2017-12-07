#!/usr/bin/env bash

# SET THE FILES
bc1=$1
bc2=$2
bc3=$3

rm84_1=/home/garner1/Work/dataset/bliss/rm84/outdata_"$bc1"/q10_chr-loc-strand-umi-pcr
rm84_2=/home/garner1/Work/dataset/bliss/rm84/outdata_"$bc2"/q10_chr-loc-strand-umi-pcr
rm94=/home/garner1/Work/dataset/restseq/RM94_BICRO27/outdata/cutsite_dist_strand_qScore_UMI_count__"$bc3"_q10.bed

# FILTER WRT QUALITY
cp $rm84_1 rm84_"$bc1"
cp $rm84_2 rm84_"$bc2"
cat $rm94 | awk '$6>=10' > rm94_"$bc3"

./coverage.sh 100000 rm84_"$bc1" mm9 
./coverage.sh 100000 rm84_"$bc2" mm9 
./coverage.sh 100000 rm94_"$bc3" mm9

rm rm84_"$bc1" rm84_"$bc2" rm94_"$bc3"
