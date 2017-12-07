#!/usr/bin/env bash

exp=$1

file=/home/garner1/Work/dataset/"$exp"/outdata/q5_c*

touch aux 

cat $file | grep -v "_" | cut -f1 | LC_ALL=C uniq -c | awk '{print $2,$1}' | sort -k1,1 | cut -d' ' -f2 | numnormalize | paste -d',' aux - > output

cp output aux 

if [ $exp == "rm51" ]; then
    mv aux rank-table.csv
    rm output
fi

