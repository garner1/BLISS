#!/usr/bin/env bash

# cat exp?/outdata/q10_chr-loc-strand-pcr|cut -f-3|sort -u > q10_chr-loc

data1=$1			# absolute path to exp1/q10_chr-loc
data2=$2			# exp2/q10_chr-loc

tot1=`wc -l $data1|cut -d' ' -f1`		# total number of unique locations
tot2=`wc -l $data2|cut -d' ' -f1`

card12=`bedtools intersect -a $data1 -b $data2 | sort -u |wc -l`
card1=`bedtools subtract -a $data1 -b $data2 -A | sort -u |wc -l`
card2=`bedtools subtract -a $data2 -b $data1 -A | sort -u |wc -l`

bedtools intersect -a $data1 -b $data2 | sort -u > 1And2
bedtools subtract -a $data1 -b $data2 -A | sort -u > 1Not2
bedtools subtract -b $data1 -a $data2 -A | sort -u > 2Not1

# bedtools intersect -a 1And2 -b $data1-strand-umi -wb|cut -f4-6|sort|uniq -c|awk '{OFS="\t";print $2,$3,$4,$1}' > ~/rm53TandNT_TumiCount.bed
# bedtools intersect -a 1And2 -b $data2-strand-umi -wb|cut -f4-6|sort|uniq -c|awk '{OFS="\t";print $2,$3,$4,$1}' > ~/rm53TandNT_NTumiCount.bed
# bedtools intersect -a 1Not2 -b $data1-strand-umi -wb|cut -f4-6|sort|uniq -c|awk '{OFS="\t";print $2,$3,$4,$1}' > ~/rm53Tonly_umiCount.bed
# bedtools intersect -a 2Not1 -b $data2-strand-umi -wb|cut -f4-6|sort|uniq -c|awk '{OFS="\t";print $2,$3,$4,$1}' > ~/rm53NTonly_umiCount.bed

bedtools intersect -a 1And2 -b $data1-strand-umi -wb|cut -f4-7|sort|uniq -c|awk '{print $1}'|datamash median 1 mean 1 sstdev 1 > $data1-commonLoc-UMIstat-median-mean-std.text
bedtools intersect -a 1And2 -b $data2-strand-umi -wb|cut -f4-7|sort|uniq -c|awk '{print $1}'|datamash median 1 mean 1 sstdev 1 > $data2-commonLoc-UMIstat-median-mean-std.text
bedtools intersect -a 1Not2 -b $data1-strand-umi -wb|cut -f4-7|sort|uniq -c|awk '{print $1}'|datamash median 1 mean 1 sstdev 1 > $data1-specificLoc-UMIstat-median-mean-std.text
bedtools intersect -a 2Not1 -b $data2-strand-umi -wb|cut -f4-7|sort|uniq -c|awk '{print $1}'|datamash median 1 mean 1 sstdev 1 > $data2-specificLoc-UMIstat-median-mean-std.text

echo "number of locations:" $card12 >> $data1-commonLoc-UMIstat-median-mean-std.text
# mv $data1-commonLoc-UMIstat-median-mean-std.text ~/

echo "number of locations:" $card12 >> $data2-commonLoc-UMIstat-median-mean-std.text
# mv $data2-commonLoc-UMIstat-median-mean-std.text ~/

echo "number of locations:" $card1 >> $data1-specificLoc-UMIstat-median-mean-std.text
# mv $data1-specificLoc-UMIstat-median-mean-std.text ~/

echo "number of locations:" $card2 >> $data2-specificLoc-UMIstat-median-mean-std.text
# mv $data2-specificLoc-UMIstat-median-mean-std.text ~/

rm -f 1And2 1Not2 2Not1
