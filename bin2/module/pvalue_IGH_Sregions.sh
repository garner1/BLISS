#!/usr/bin/env bash

feat=$1				# {~/Work/pipelines/data/IGH_locus_Sregions.bed}
control=$2                      # {~/Work/dataset/bliss/rm90/outdata_*/q10_chr-loc-countDifferentUMI.bed} control
treated=$3			# treated
samples=$4			# number of samples in MC simulation

# ~/Work/pipelines/aux.scripts/fetchChromSizes.sh hg19 > mygenome 
for seed in $(seq 1 4 "$samples"); do
    parallel -k "~/Work/pipelines/aux.scripts/shuffle_features.sh $feat $control $treated {} |paste - -" ::: $seed $(expr $seed + 1) $(expr $seed + 2) $(expr $seed + 3)
done

rm -f newfeat_*
