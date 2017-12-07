#!/usr/bin/env bash

# THIS SCRIPT CAN BE CALLED AS
# ./bliss.sh rm15 hg19 patfile quality 100000
################################################################################
clear
# DEFINING VARIABLES
experiment=$1			# e.i. rm31_1000
genome=$2			# e.i. hg19
patfile=$3			# is the pattern file
numbproc=32
quality=$4			# mapping quality
reads=$5
################################################################################
# PREPARE DIRECTORY STRUCTURE
datadir=$HOME/Work/dataset && mkdir -p $datadir/$experiment
exp=`echo $experiment|cut -d'_' -f1` # insert reads number after _
in=$datadir/$experiment/indata && mkdir -p $in
out=$datadir/$experiment/outdata && mkdir -p $out
outcontrol=$datadir/$experiment/outdata.control && mkdir -p $outcontrol
aux=$datadir/$experiment/auxdata && mkdir -p $aux
auxcontrol=$datadir/$experiment/auxdata.control && mkdir -p $auxcontrol
refgen=$HOME/igv/genomes/$genome.fasta
################################################################################
numb_of_files=1			# do not consider R2
r1=$datadir/$exp/indata/r1oneline.fq
echo "R1 is " $r1
################################################################################
# ./module/quality_control.sh $numb_of_files $numbproc $out $r1 $r2 

./module/prepare_files.sh  $r1 $in $reads

./module/pattern_filtering.sh $in $outcontrol $out $patfile 

./module/prepare_for_mapping.sh $numb_of_files $out $aux $outcontrol $auxcontrol $in 

./module/mapping.sh $numb_of_files $numbproc $refgen $aux $out $experiment $auxcontrol $outcontrol 

./module/mapping_quality.sh $numb_of_files $out $experiment $outcontrol $quality 

./module/umi_joining.sh $numb_of_files $out $experiment $aux $outcontrol $auxcontrol $quality 

./module/filter.centromere-telomere.sh $experiment $out $outcontrol $quality 

./module/filter.blacklist.sh $out $outcontrol $quality 

#UMI filtering
cat ~/Work/dataset/"$experiment"/outdata/chr-loc-strand-umi_q"$quality" | cut -f-5 | uniq -c | awk '{print $2,$3,$4,$5,$6,$1}' | tr " " "," > ~/Work/dataset/"$experiment"/auxdata/aux
python ./python/umi_filtering.py ~/Work/dataset/"$experiment"/auxdata/aux ~/Work/dataset/"$experiment"/outdata/q"$quality"_aux
cat ~/Work/dataset/"$experiment"/outdata/q"$quality"_aux | tr -d "," | tr -d "'" | tr -d "[" | tr -d "]" | tr " " "\t" > ~/Work/dataset/"$experiment"/outdata/q"$quality"_chr-loc-strand-umi-pcr 

cp ~/Work/dataset/"$experiment"/outdata/q"$quality"_chr-loc-strand-umi-pcr ~/Work/dataset/"$exp"/"$reads"reads_"$quality"q_chr-loc-strand-umi-pcr
rm -r ~/Work/dataset/"$experiment"
