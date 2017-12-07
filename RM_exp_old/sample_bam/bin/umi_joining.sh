#!/usr/bin/env bash

out=$1
experiment=$2
quality=$3
lines=$4

samtools view -H $out/$experiment.q$quality.bam > $out/header.txt
samtools view $out/$experiment.q$quality.bam | shuf -n $lines > "$out"/"$lines"-small.sam
cat $out/header.txt $out/$lines-small.sam > "$out"/"$lines"-reads.sam

echo 'Selecting unique UMIs'

samtools view -F 0x10 $out/$lines-reads.sam | cut -f1,3,4 | awk '{print $0, "\t+"}' > $out/$lines-forward & pid1=$!
samtools view -f 0x10 $out/$lines-reads.sam | cut -f1,3,4 | awk '{print $0, "\t-"}' > $out/$lines-reverse & pid2=$!
wait $pid1
wait $pid2
cat $out/$lines-forward $out/$lines-reverse | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $out/$lines-id.chr.loc.strand & pid1=$!
cat $out/filtered.r1.fa | tr -d ">" | cut -d':' -f-7 | paste - - > $out/$lines-id.umi.barcode.genomic_aux & pid2=$!
wait $pid1
wait $pid2

cat $out/$lines-id.umi.barcode.genomic_aux | awk '{if (NF == 4) print; else if (NF == 5) print $1,$3,$4,$5}' | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $out/$lines-id.umi.barcode.genomic

LC_ALL=C join $out/$lines-id.chr.loc.strand $out/$lines-id.umi.barcode.genomic | cut -d' ' -f-5 |LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -t' ' -k2,2 -k3,3n -k4,4 -k5,5 |
awk '{print $2,$3,$3,$4,$5,$1}' | tr " " "\t" > $out/reads"$lines"_q"$quality".bed 
