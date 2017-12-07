#!/usr/bin/env bash

out=$1

rm -f "$out"/asisi.bed 
touch "$out"/asisi.bed 
for file in ~/Work/silicoDigest/asisi_*
do
    chr=`echo $file | cut -d'/' -f6 | cut -d'_' -f2`
    cat $file | cut -d':' -f1|awk -v chr="$chr" '{print chr,$1,$1}' | tr " " "\t" >> "$out"/asisi.bed 
done
