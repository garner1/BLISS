#!/usr/bin/env bash

# THIS SCRIPT CAN BE CALLED AS
# ./bliss.sh rm35 hg19 patfile quality
################################################################################
# clear
# DEFINING VARIABLES
experiment=$1			# e.i. rm31,32,34,35,50,51,53 corresponding to *$experiment*R{1,2}.fastq.gz
genome=$2			# e.i. mm9 or hg19
quality=$3			# mapping quality
fastqDir=$4			# full path to directory with fastq file
cutsite=$5			
numbproc=32
################################################################################
# PREPARE DIRECTORY STRUCTURE
datadir=$HOME/Work/dataset/bliss && mkdir -p $datadir/$experiment
bin=$HOME/Dropbox/pipelines/BLISS/bin
python=$HOME/Dropbox/pipelines/BLISS/python
in=$datadir/$experiment/indata && mkdir -p $in
out=$datadir/$experiment/outdata && mkdir -p $out
outcontrol=$datadir/$experiment/outdata.control && mkdir -p $outcontrol
aux=$datadir/$experiment/auxdata && mkdir -p $aux
auxcontrol=$datadir/$experiment/auxdata.control && mkdir -p $auxcontrol
refgen=$HOME/igv/genomes/$genome.fasta
################################################################################
# LOAD DATA FILES

find $fastqDir -maxdepth 1 -type f -iname "$experiment.gz" | sort > filelist_"$experiment"

numb_of_files=`cat filelist_"$experiment" | wc -l`
r1=`cat filelist_"$experiment" | head -n1`
echo "R1 is " $r1
if [ $numb_of_files == 2 ]; then
    r2=`cat filelist_"$experiment" | tail -n1`
    echo "R2 is " $r2
fi
rm filelist_"$experiment"

################################################################################

"$bin"/module/quality_control.sh $numb_of_files $numbproc $out $r1 $r2 
"$bin"/module/mapping.sh $numb_of_files $numbproc $refgen $r1 $out $experiment 
"$bin"/module/mapping_quality.sh $numb_of_files $out $experiment $outcontrol $quality $cutsite
bedtools bamtobed -i "$out"/"$experiment".q"$quality".sorted.bam > "$out"/"$experiment".q"$quality".sorted.bam.bed

