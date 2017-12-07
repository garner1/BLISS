#!/usr/bin/env bash

lines=$1
in=$2
numb_of_files=$3
r2=$4

echo "Decompress fastq.gz ..."

shuf -n $lines ./r1oneline.fq | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $in/r1oneline.fq
cat $in/r1oneline.fq | cut -f 1,2 | sed 's/^@/>/' | tr "\t" "\n" > $in/r1.fa
cat  $in/r1.fa | paste - - > $in/r1oneline.fa

echo "Done!"
