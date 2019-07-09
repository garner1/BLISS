#!/usr/bin/env bash
numb_of_files=$1
out=$2 
experiment=$3 
quality=$4
cutsite=$5

echo 'Filtering the quality of the mapped reads ...'
if [[ $numb_of_files == 1 ]]; then # IF SE READS
    samtools view -Sb -q $quality $out/$experiment.sam > $out/$experiment.q$quality.bam
    samtools sort $out/$experiment.q$quality.bam -o $out/$experiment.q$quality.sorted.bam
    samtools index $out/$experiment.q$quality.sorted.bam
fi
if [[ $numb_of_files == 2 ]]; then # IF PE READS
    samtools view -Sb -f 66 -q $quality $out/$experiment.sam > $out/$experiment.q$quality.bam
    samtools sort $out/$experiment.q$quality.bam -o $out/$experiment.q$quality.sorted.bam
    samtools index $out/$experiment.q$quality.sorted.bam
fi
rm $out/$experiment.q$quality.bam #clean
echo 'Done'
