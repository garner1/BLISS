#!/usr/bin/env bash

T=$1				# full path to bed file with UMI count
NT=$2				# full path to bed file with UMI count
min=$3			# UMI threshold

cat $T | awk -v min=$min '$4>=min' | datamash --group 1 sum 4 | sort -k1,1 > file1
cat $NT | awk -v min=$min '$4>=min' | datamash --group 1 sum 4 | sort -k1,1 > file2
join file1 file2|awk '{OFS="\t"; print $1,$2,$3,$2/$3}'|tr '.' ',' |datamash mean 4
