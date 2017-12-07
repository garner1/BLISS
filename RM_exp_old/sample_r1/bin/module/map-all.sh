#!/usr/bin/env bash

exp=$1
refgen="$HOME"/igv/genomes/hg19.fasta
in=~/Work/dataset/"$exp"/indata
aux=~/Work/dataset/"$exp"/auxdata

bwa mem -t 32 $refgen $in/r1.fq > $aux/$exp.sam
samtools view -Sb -q 5 $aux/$exp.sam > $aux/$exp-q5.bam
