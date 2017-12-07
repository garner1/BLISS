#!/usr/bin/env bash

#
# GIVEN THE INPUT FILE, THIS SCRIPT SELECT THE LINES CORRESPONDING 
# TO THE RELEVANT PERCENTILE WRT A GIVEN FIELD
#

file=$1				# full path to input file
percentile=$2			# which percentile to select {10,25}

perc=$(expr 100 - $percentile)
thr_top=$(tail -n +2 $file | cut -f6 | sta --p $perc | tail -n -1)
thr_bot=$(tail -n +2 $file | cut -f6 | sta --p $percentile | tail -n -1)

tail -n +2 $file | awk -v thr="$thr_top" '{FS=OFS="\t"} $6>=thr' | sort -k1,1 > myfile_top

tail -n +2 $file | awk -v thr="$thr_bot" '{FS=OFS="\t"} $6<=thr' | sort -k1,1 > myfile_bot
