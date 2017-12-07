#!/usr/bin/env bash

#
# PROVIDES THE TSS-LOCATIONS FOR A SUBSET OF RELEVANT GENES 
#

file=$1	    # full path to input file of select_percentile.sh (~/Work/pipelines/data/liver1-zy4.gene.expr)
percentile=$2			# see select_percentile.sh
ref=$3				# TSS file (for mm9:~/Work/pipelines/data/TSS_mm9__gene-chr-start_sorted.bed)

~/Work/pipelines/bliss/bin/module/select_percentiles.sh $file $percentile 
 
join myfile_top $ref | tr ' ' '\t' | cut -f1,9- | awk '{FS=OFS="\t"}{print $2,$3,$4,$1}' > tss_top
join myfile_bot $ref | tr ' ' '\t' | cut -f1,9- | awk '{FS=OFS="\t"}{print $2,$3,$4,$1}' > tss_bot


