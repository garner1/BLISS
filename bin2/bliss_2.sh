#!/usr/bin/env bash

# THIS SCRIPT CAN BE CALLED AS
# ./bliss.sh rm35 hg19 patfile quality
################################################################################
clear
# DEFINING VARIABLES
experiment=$1			# e.i. rm31,32,34,35,50,51,53 corresponding to *$experiment*R{1,2}.fastq.gz
genome=$2			# e.i. mm9 or hg19
patfile=$3			# is the pattern file
quality=$4			# mapping quality
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

find /media/bicroserver_2-seq/BICRO51/BICRO51-49603554/BB54-59297303 -maxdepth 1 -type f -iname "*$experiment*.fastq.gz" | sort > filelist_"$experiment"
# find /media/bicroserver_2-seq/BICRO54/FASTQ/BICRO54-52989938/FASTQ_Generation_2017-11-15_03_56_36Z-60257939 -maxdepth 1 -type f -iname "*$experiment*" | sort > filelist_"$experiment"
# find /media/bicroserver_2-seq/BICRO47/BICRO47-FASTQsBasespace -maxdepth 1 -type f -iname "*$experiment*" | sort > filelist_"$experiment"
# find /media/bicroserver_2-seq/COLLABORATIONS/IMB01 -maxdepth 1 -type f -iname "*$experiment*" | sort > filelist_"$experiment"
# find /media/bicroserver_2-seq/BICRO54/FASTQ/BICRO54-52989938/FASTQ_Generation_2017-11-15_03_56_36Z-60257939 -maxdepth 1 -type f -iname "*$experiment*" | sort > filelist_"$experiment"
# find ~/Work/dataset/bliss -type f -iname "*$experiment*.fastq.gz" | sort > filelist_"$experiment"

numb_of_files=`cat filelist_"$experiment" | wc -l`
r1=`cat filelist_"$experiment" | head -n1`
echo "R1 is " $r1
if [ $numb_of_files == 2 ]; then
    r2=`cat filelist_"$experiment" | tail -n1`
    echo "R2 is " $r2
fi
rm filelist_"$experiment"
################################################################################
# "$bin"/module/quality_control.sh $numb_of_files $numbproc $out $r1 $r2 
# "$bin"/module/prepare_files.sh  $r1 $in $numb_of_files $r2
################################################################################
"$bin"/module/pattern_filtering.sh $in $outcontrol $out $patfile $cutsite
"$bin"/module/prepare_for_mapping.sh $numb_of_files $out $aux $outcontrol $auxcontrol $in $cutsite
"$bin"/module/mapping.sh $numb_of_files $numbproc $refgen $aux $out $experiment 
"$bin"/module/mapping_quality.sh $numb_of_files $out $experiment $outcontrol $quality $cutsite
"$bin"/module/umi_joining.sh $numb_of_files $out $experiment $aux $outcontrol $auxcontrol $quality $cutsite

if [ "$genome" = "hg19" ]; then
    ##HERE BEDTOOLS COMPLAIN ABOUT FIELDS...###
    # "$bin"/module/filter.centromere-telomere.sh $experiment $out $outcontrol $quality $cutsite 
    # "$bin"/module/filter.blacklist.sh $out $outcontrol $quality $cutsite
    # cat "$datadir"/"$experiment"/outdata/chr-loc-strand-umi_q"$quality" |cut -f-5 |LC_ALL=C uniq -c | awk '{print $2,$3,$4,$5,$6,$1}' | tr " " "," > "$datadir"/"$experiment"/auxdata/aux
    #####
    cat "$datadir"/"$experiment"/outdata/_q"$quality".bed | cut -f-5 |LC_ALL=C uniq -c | awk '{print $2,$3,$4,$5,$6,$1}' | tr " " "," > "$datadir"/"$experiment"/auxdata/aux
fi

if [ "$genome" = "mm9" ]; then
    cat "$datadir"/"$experiment"/outdata/_q"$quality".bed | cut -f-5 |LC_ALL=C uniq -c | awk '{print $2,$3,$4,$5,$6,$1}' | tr " " "," > "$datadir"/"$experiment"/auxdata/aux
fi

#####UMI filtering
cp "$datadir"/"$experiment"/auxdata/aux "$datadir"/"$experiment"/outdata/pre_umi_filtering.csv

"$bin"/module/umi_filter_1.sh "$datadir"/"$experiment"/outdata/pre_umi_filtering.csv "$datadir"/"$experiment"/outdata/q"$quality"_aux

"$bin"/module/umi_filter_2.sh "$datadir"/"$experiment"/outdata/q"$quality"_aux "$datadir"/"$experiment"/outdata/q"$quality"_chr-loc-strand-umi-pcr

if [ "$genome" = "hg19" ]; then
    sed -i.bak 's/chr23/chrX/' "$datadir"/"$experiment"/outdata/q"$quality"_chr-loc-strand-umi-pcr
    sed -i.bak 's/chr24/chrY/' "$datadir"/"$experiment"/outdata/q"$quality"_chr-loc-strand-umi-pcr
fi

"$bin"/module/umi_filter_3.sh "$datadir"/"$experiment"/outdata/q"$quality"_chr-loc-strand-umi-pcr  "$datadir"/"$experiment"/outdata/q"$quality"_chr-loc-countDifferentUMI.bed
sed -i.bak 's/chr23/chrX/' "$datadir"/"$experiment"/outdata/q"$quality"_chr-loc-countDifferentUMI.bed
sed -i.bak 's/chr24/chrY/' "$datadir"/"$experiment"/outdata/q"$quality"_chr-loc-countDifferentUMI.bed

echo "Number of fragments:" > "$datadir"/"$experiment"/outdata/summary.txt
wc -l "$datadir"/"$experiment"/indata/r1oneline.fa >> "$datadir"/"$experiment"/outdata/summary.txt
echo "Number of fragment with prefix:" >> "$datadir"/"$experiment"/outdata/summary.txt
cat "$datadir"/"$experiment"/outdata/*filtered* | paste - - | wc -l >> "$datadir"/"$experiment"/outdata/summary.txt
echo "Alignment statistics:" >> "$datadir"/"$experiment"/outdata/summary.txt
samtools flagstat "$datadir"/"$experiment"/outdata/*.sam >> "$datadir"/"$experiment"/outdata/summary.txt
echo "Number of left and right cuts:" >> "$datadir"/"$experiment"/outdata/summary.txt
cat "$datadir"/"$experiment"/outdata/q"$quality"_chr-loc-strand-umi-pcr | grep -v "_" | cut -f4 | sort | uniq -c >> "$datadir"/"$experiment"/outdata/summary.txt
echo "Number of DSB locations:" >> "$datadir"/"$experiment"/outdata/summary.txt
cat "$datadir"/"$experiment"/outdata/q"$quality"_chr-loc-countDifferentUMI.bed | grep -v "_" | wc -l >> "$datadir"/"$experiment"/outdata/summary.txt
echo "Number of UMIs:" >> "$datadir"/"$experiment"/outdata/summary.txt
cat "$datadir"/"$experiment"/outdata/q"$quality"_chr-loc-strand-umi-pcr | grep -v "_" | wc -l >> "$datadir"/"$experiment"/outdata/summary.txt

name=`echo $patfile|rev|cut -d'/' -f1|rev`
mv "$datadir"/"$experiment"/outdata/q"$quality"_chr-loc-strand-umi-pcr "$datadir"/"$experiment"/outdata/"$name"__q"$quality"_chr-loc-strand-umi-pcr.tsv
mv "$datadir"/"$experiment"/outdata/q"$quality"_chr-loc-countDifferentUMI.bed "$datadir"/"$experiment"/outdata/"$name"_chr-loc-countDifferentUMI.bed
mv "$datadir"/"$experiment"/outdata/summary.txt "$datadir"/"$experiment"/outdata/"$name"__summary.txt
