#!/usr/bin/env bash
numb_of_files=$1
numbproc=$2
refgen=$3
aux=$4
out=$5
experiment=$6
auxcontrol=$7
outcontrol=$8
cutsite=$9

echo 'Aligning reads to the reference genome ...'
if [[ -z "$cutsite" && $numb_of_files == 1 ]]; then # IF THERE IS NO ENZYME && WITH SE READS
    bwa mem -t $numbproc $refgen $aux/r1.2b.aln.fq > $out/$experiment.sam
fi
if [[ -z "$cutsite" && $numb_of_files == 2 ]]; then # IF THERE IS NO ENZYME && WITH PE READS
    bwa mem -t $numbproc $refgen $aux/r1.2b.aln.fq $aux/r2.2b.aln.fq > $out/$experiment.sam
fi
if [[ ! -z "$cutsite" && $numb_of_files == 2 ]]; then # IF THERE IS ENZYME && WITH PE READS
    bwa mem -t $numbproc $refgen $aux/r1.2b.aln.fq $aux/r2.2b.aln.fq > $out/$experiment.sam & pid1=$!
    bwa mem -t $numbproc $refgen $auxcontrol/r1.2b.aln.fq $auxcontrol/r2.2b.aln.fq > $outcontrol/$experiment.sam & pid2=$!
    wait $pid1
    wait $pid2
fi
if [[ ! -z "$cutsite" && $numb_of_files == 1 ]]; then # IF THERE IS ENZYME && WITH SE READS
    bwa mem -t $numbproc $refgen $aux/r1.2b.aln.fq > $out/$experiment.sam & pid1=$!
    bwa mem -t $numbproc $refgen $auxcontrol/r1.2b.aln.fq > $outcontrol/$experiment.sam & pid2=$!
    wait $pid1
    wait $pid2
fi
echo 'Done'
