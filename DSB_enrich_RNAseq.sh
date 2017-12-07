#!/usr/bin/env bash

day=$1				# file with dsb locations
RNA=$2				# file with rnaseq info
CONV=$3				# file converting gene IDs in different format
TSS=$4				# ref file with tss info {TSS_mm9.bed}

field=9				# field in RNA to which apply the filtering
threshold=$5				# threshold
umi=$6					# UMI threshold
DSB=~/Work/dataset/bliss/rm84/outdata/"$day"days.bed

cat $RNA | awk -v t="$threshold" -v f="$field" '$f >= t && $13 == "yes"' | cut -f3,7,8,9 | sort -k1,1 > top_$threshold & pid1=$! # select top relevant genes
cat $RNA | awk -v t="$threshold" -v f="$field" '$f <= -t && $13 == "yes"' | cut -f3,7,8,9 | sort -k1,1 > bot_$threshold & pid2=$! # select bot relevant genes
wait $pid1
wait $pid2

cat $CONV | sort -k1,1 | join -t $'\t' - top_$threshold | sort -k2,2 > file1_$threshold # convert gene symbols to gene bank ids
cat $TSS | sort -k4,4 | join -t $'\t' -1 4 -2 2 - file1_$threshold | cut -f-3 | grep -v "random" | awk '{OFS="\t"; print $2,$3,$3+1,$1}' > top_$threshold.bed

cat $CONV | sort -k1,1 | join -t $'\t' - bot_$threshold | sort -k2,2 > file1_$threshold # convert gene symbols to gene bank ids
cat $TSS | sort -k4,4 | join -t $'\t' -1 4 -2 2 - file1_$threshold | cut -f-3 | grep -v "random" | awk '{OFS="\t"; print $2,$3,$3+1,$1}' > bot_$threshold.bed

##### DSB(TOP)_ave/DSB(BOT)_ave as a function of time {0,3,5 days} ###########
num=$(cat $DSB | awk -v umi="$umi" '$4>umi' | bedtools window -w 1000 -a top_$threshold.bed -b - -c | datamash sum 5) # ave numb of location around top genes
den=$(cat $DSB | awk -v umi="$umi" '$4>umi' | bedtools window -w 1000 -a bot_$threshold.bed -b - -c | datamash sum 5) # ave numb of location around bot genes
echo $day $threshold $umi $num $den | tr ',' '.' | awk '{OFS="\t"; print $1,$2,$3,$4,$5,$4/$5}'

rm -f file1_$threshold top_$threshold bot_$threshold top_$threshold.bed bot_$threshold.bed
##############################################################################





