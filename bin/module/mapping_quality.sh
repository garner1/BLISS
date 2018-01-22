#!/usr/bin/env bash
numb_of_files=$1
out=$2 
experiment=$3 
outcontrol=$4 
quality=$5
cutsite=$6 
echo 'Filtering the quality of the mapped reads ...'
if [[ -z "$cutsite" && $numb_of_files == 1 ]]; then # IF THERE IS NO ENZYME && WITH SE READS
    samtools view -Sb -q $quality $out/$experiment.sam > $out/$experiment.q$quality.bam
    samtools sort $out/$experiment.q$quality.bam -o $out/$experiment.q$quality.sorted.bam
    samtools index $out/$experiment.q$quality.sorted.bam
fi
if [[ -z "$cutsite" && $numb_of_files == 2 ]]; then # IF THERE IS NO ENZYME && WITH PE READS
    samtools view -Sb -f 66 -q $quality $out/$experiment.sam > $out/$experiment.q$quality.bam
    samtools sort $out/$experiment.q$quality.bam -o $out/$experiment.q$quality.sorted.bam
    samtools index $out/$experiment.q$quality.sorted.bam
fi
echo 'Done'
