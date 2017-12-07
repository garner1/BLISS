#!/usr/bin/env bash

#execute from dataset dir!!!

window=$1
bedfile=$2
genome=$3
sliding=$4

temp_file=$(mktemp)

~/Work/pipelines/aux.scripts/make-windows.sh $window $genome $sliding > ${temp_file}

bedtools intersect -a ${temp_file} -b $bedfile -c > "$bedfile"-coverage-"$window"_"$sliding".bed

rm ${temp_file}
