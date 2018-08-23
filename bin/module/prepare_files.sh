#!/usr/bin/env bash

r1=$1
in=$2
numb_of_files=$3
r2=$4

echo "Decompress fastq.gz ..."

if [ $numb_of_files == 1 ]; then
    if [ ! -f "$in"/processed.fastq.gz ]; then
	umi_tools extract --stdin="$r1" --bc-pattern=NNNNNNNNXXXXXXXX --log=processed.log --stdout "$in"/processed.fastq.gz # Ns represent the random part of the barcode and Xs the fixed part
	gunzip -c "$in"/processed.fastq.gz > "$in"/r1-unzip
	cat $in/r1-unzip | paste - - - - | cut -f 1,2 | sed 's/^@/>/' | tr "\t" "\n" > $in/r1.fa & pid1=$!
	cat $in/r1-unzip | paste - - - - | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $in/r1oneline.fq & pid2=$!
	wait $pid1
	wait $pid2
    fi
fi
if [ $numb_of_files == 2 ]; then
    if [ ! -f "$in"/processed.2.fastq.gz ]; then
	umi_tools extract --stdin="$r1" --read2-in="$r2" --bc-pattern=NNNNNNNNXXXXXXXX --log=processed.log --stdout "$in"/processed.1.fastq.gz --read2-out="$in"/processed.2.fastq.gz
	gunzip -c "$in"/processed.1.fastq.gz > "$in"/r1-unzip & pid1=$!
	gunzip -c "$in"/processed.2.fastq.gz | paste - - - - | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $in/r2oneline.fq & pid2=$!
	wait $pid1
	cat $in/r1-unzip | paste - - - - | cut -f 1,2 | sed 's/^@/>/' | tr "\t" "\n" > $in/r1.fa & pid1=$!
	cat $in/r1-unzip | paste - - - - | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $in/r1oneline.fq & pid3=$!	
	cat $in/r1-unzip | paste - - - - | cut -f 1,2 | sed 's/^@/>/' | tr "\t" "\n" | paste - - > $in/r1oneline.fa & pid4=$!
	wait $pid2
	wait $pid3
	wait $pid4
    fi
fi
echo 'Done'
