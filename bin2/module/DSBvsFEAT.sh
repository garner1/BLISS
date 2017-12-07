#!/usr/bin/env bash

dsb=$1	# full path to umiCount bed file
feature=$2	# full path to feature file ~/Work/pipelines/data/liver/liver.polII.peak.txt
genome=$3
sample_size=$4
output=$5

rm -f rnd_5points-stat_'$output'

cat $feature | awk '{FS=OFS="\t"; print $1,$2,$2+1}' > myfeat
#########################
# bedtools window -a myfeat -b $dsb -c | cut -f4 > $output
# bedtools window -a myfeat -b $dsb -c | sort -k4,4nr > $output
#########################

# bedtools window -a myfeat -b $dsb -c | datamash min 4 q1 4 median 4 q3 4 max 4 > my_5points-stat

~/Work/pipelines/aux.scripts/fetchChromSizes.sh $genome "$genome".chrm.sizes|grep -v '_\|M' > mygenome

# GENERATE MANY RND 5-POINTS STATISTICS
parallel "bedtools shuffle -i myfeat -g mygenome -seed {} > newfeat_{} && bedtools window -a newfeat_{} -b $dsb -c | datamash min 4 q1 4 median 4 q3 4 max 4 >> rnd_5points-stat_'$output' && rm -f newfeat_{}" ::: $(seq 1 "$sample_size")

rm -f mygenome myfeat 
