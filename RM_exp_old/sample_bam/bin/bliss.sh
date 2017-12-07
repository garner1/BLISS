#!/usr/bin/env bash

# THIS SCRIPT CAN BE CALLED AS
# ./bliss.sh rm15 quality lines
################################################################################
clear
# DEFINING VARIABLES
experiment=$1			# e.i. rm11
quality=$2			# mapping quality
lines=$3
numbproc=32
################################################################################
# PREPARE DIRECTORY STRUCTURE
datadir=$HOME/Work/dataset && mkdir -p $datadir/$experiment
out=$datadir/$experiment/outdata && mkdir -p $out
################################################################################
echo $experiment $lines
./umi_joining.sh $out $experiment $quality $lines
./filter.centromere-telomere.sh $quality $out $lines
./filter.blacklist.sh $quality $out $lines

#UMI filtering
cat $out/chr-loc-strand-umi_q"$quality"_reads"$lines" | cut -f-5 | uniq -c | awk '{print $2,$3,$4,$5,$6,$1}' | tr " " "," > "$out"/aux_reads"$lines"
python ~/Work/pipelines/bliss/repo_bliss/python/umi_filtering.py "$out"/aux_reads"$lines" "$out"/q"$quality"_aux_reads"$lines"
cat "$out"/q"$quality"_aux_reads"$lines" | tr -d "," | tr -d "'" | tr -d "[" | tr -d "]" | tr " " "\t" | grep -v "_" > "$out"/"$experiment"_"$lines"reads_q"$quality"_chr-loc-strand-umi-pcr 
################################################################################
dsb=`cat "$out"/"$experiment"_"$lines"reads_q"$quality"_chr-loc-strand-umi-pcr | grep -v "_" | wc -l`
entropy=`cat "$out"/"$experiment"_"$lines"reads_q"$quality"_chr-loc-strand-umi-pcr | cut -f6 | numnormalize | awk '{e-=$1*log($1)} END {print e}'`
maxentropy=`cat "$out"/q"$quality"_chr-loc-strand-umi-pcr | grep -v "_" | wc -l | awk '{print log($1)}'`

echo $experiment $lines $dsb $entropy $maxentropy >> ~/Work/pipelines/rm_scaling/sample_bam/"$experiment"-reads-dsb-ent-maxent

rm "$out"/"$lines"* "$out"/*reads"$lines" "$out"/reads"$lines"* $out/header.txt
#################################################################################
# norma=`tail -1 $file | awk '{print $NF}'`
# paste $file file-ent | awk -v norma="$norma" '{print $1,$2,$3,$5,$5/log(norma)}' > "$file"-reads-dsb-ent-entNorm
# awk '{print > $1}' out
