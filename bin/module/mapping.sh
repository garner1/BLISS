#!/usr/bin/env bash
numb_of_files=$1
numbproc=$2
refgen=$3
aux=$4
out=$5
experiment=$6

echo 'Aligning reads to the reference genome ...'
if [[ $numb_of_files == 1 ]]; then # IF SE READS
    bwa mem -t $numbproc $refgen $aux/r1.2b.aln.fq > $out/$experiment.sam
fi
if [[ $numb_of_files == 2 ]]; then # IF PE READS
    bwa mem -t $numbproc $refgen $aux/r1.2b.aln.fq $aux/r2.2b.aln.fq > $out/$experiment.sam
fi
echo 'Done'
