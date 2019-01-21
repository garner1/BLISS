#!/bin/usr/env bash

inputfile=$1			# samplesheet.csv

while read -r line; do
    f1=`echo $line|cut -d',' -f1`
    f2=`echo $line|cut -d',' -f2|tr -d '_/'`
    f3=`echo $line|cut -d',' -f3`
    echo ^ 8...8 "$f3"[1,0,0] 1...1000 $ > "$f1"_"$f2"_"$f3"
done < $inputfile
