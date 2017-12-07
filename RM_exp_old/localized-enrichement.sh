#! /usr/bin/env bash

# Evaluate the weighted partial average per chromosome of dsb locations, weighted by the number of colocalized umi: \sum_{loc=1}^{N} (#umi)_loc s.t #umi==var

# do not sort after cut-f-2 beacuse the data file is the concatenation of 2 experiment (small and big)
normNT=`cat rm53/outdata/q5_chr-loc-strand-umi-pcr_NT|grep -v "_"|wc -l`
normT=`cat rm53/outdata/q5_chr-loc-strand-umi-pcr_T|grep -v "_"|wc -l`

var=1
cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_NT|grep -v "_" |cut -f-2|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1>=var) print $2,$1}'|datamash --sort --group 1 sum 2 | awk -v normNT="$normNT" '{OFS="\t"}{print $1,$2/normNT}' | sort -k1,1 > nt
cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_T|grep -v "_" |cut -f-2|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1>=var) print $2,$1}'|datamash --sort --group 1 sum 2 | awk -v normT="$normT" '{OFS="\t"}{print $1,$2/normT}' | sort -k1,1 > t
join t nt|awk '{OFS="\t"}{print $1,$2,$3,$2/$3}'|sort -k4,4nr > drug-enrichment-sites-gt"$var"umi.txt

var=2
cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_NT|grep -v "_" |cut -f-2|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1>=var) print $2,$1}'|datamash --sort --group 1 sum 2 | awk -v normNT="$normNT" '{OFS="\t"}{print $1,$2/normNT}' | sort -k1,1 > nt
cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_T|grep -v "_" |cut -f-2|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1>=var) print $2,$1}'|datamash --sort --group 1 sum 2 | awk -v normT="$normT" '{OFS="\t"}{print $1,$2/normT}' | sort -k1,1 > t
join t nt|awk '{OFS="\t"}{print $1,$2,$3,$2/$3}'|sort -k4,4nr > drug-enrichment-sites-gt"$var"umi.txt

var=3
cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_NT|grep -v "_" |cut -f-2|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1>=var) print $2,$1}'|datamash --sort --group 1 sum 2 | awk -v normNT="$normNT" '{OFS="\t"}{print $1,$2/normNT}' | sort -k1,1 > nt
cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_T|grep -v "_" |cut -f-2|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1>=var) print $2,$1}'|datamash --sort --group 1 sum 2 | awk -v normT="$normT" '{OFS="\t"}{print $1,$2/normT}' | sort -k1,1 > t
join t nt|awk '{OFS="\t"}{print $1,$2,$3,$2/$3}'|sort -k4,4nr > drug-enrichment-sites-gt"$var"umi.txt

var=1
cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_NT|grep -v "_" |cut -f-2|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1==var) print $2,$1}'|datamash --sort --group 1 sum 2 | awk -v normNT="$normNT" '{OFS="\t"}{print $1,$2/normNT}' | sort -k1,1 > nt
cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_T|grep -v "_" |cut -f-2|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1==var) print $2,$1}'|datamash --sort --group 1 sum 2 | awk -v normT="$normT" '{OFS="\t"}{print $1,$2/normT}' | sort -k1,1 > t
join t nt|awk '{OFS="\t"}{print $1,$2,$3,$2/$3}'|sort -k4,4nr > drug-enrichment-sites-"$var"umi.txt

var=2
cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_NT|grep -v "_" |cut -f-2|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1==var) print $2,$1}'|datamash --sort --group 1 sum 2 | awk -v normNT="$normNT" '{OFS="\t"}{print $1,$2/normNT}' | sort -k1,1 > nt
cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_T|grep -v "_" |cut -f-2|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1==var) print $2,$1}'|datamash --sort --group 1 sum 2 | awk -v normT="$normT" '{OFS="\t"}{print $1,$2/normT}' | sort -k1,1 > t
join t nt|awk '{OFS="\t"}{print $1,$2,$3,$2/$3}'|sort -k4,4nr > drug-enrichment-sites-"$var"umi.txt

var=3
cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_NT|grep -v "_" |cut -f-2|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1==var) print $2,$1}'|datamash --sort --group 1 sum 2 | awk -v normNT="$normNT" '{OFS="\t"}{print $1,$2/normNT}' | sort -k1,1 > nt
cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_T|grep -v "_" |cut -f-2|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1==var) print $2,$1}'|datamash --sort --group 1 sum 2 | awk -v normT="$normT" '{OFS="\t"}{print $1,$2/normT}' | sort -k1,1 > t
join t nt|awk '{OFS="\t"}{print $1,$2,$3,$2/$3}'|sort -k4,4nr > drug-enrichment-sites-"$var"umi.txt

var=4
cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_NT|grep -v "_" |cut -f-2|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1==var) print $2,$1}'|datamash --sort --group 1 sum 2 | awk -v normNT="$normNT" '{OFS="\t"}{print $1,$2/normNT}' | sort -k1,1 > nt
cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_T|grep -v "_" |cut -f-2|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1==var) print $2,$1}'|datamash --sort --group 1 sum 2 | awk -v normT="$normT" '{OFS="\t"}{print $1,$2/normT}' | sort -k1,1 > t
join t nt|awk '{OFS="\t"}{print $1,$2,$3,$2/$3}'|sort -k4,4nr > drug-enrichment-sites-"$var"umi.txt

var=5
cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_NT|grep -v "_" |cut -f-2|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1==var) print $2,$1}'|datamash --sort --group 1 sum 2 | awk -v normNT="$normNT" '{OFS="\t"}{print $1,$2/normNT}' | sort -k1,1 > nt
cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_T|grep -v "_" |cut -f-2|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1==var) print $2,$1}'|datamash --sort --group 1 sum 2 | awk -v normT="$normT" '{OFS="\t"}{print $1,$2/normT}' | sort -k1,1 > t
join t nt|awk '{OFS="\t"}{print $1,$2,$3,$2/$3}'|sort -k4,4nr > drug-enrichment-sites-"$var"umi.txt

rm t nt

# Fragile sites are counted for each chromosome, separately for T and NT. The increase in their number from NT to T does not necessarily mean that a fragile site in NT is shared by more cells in T. 
# To investigate this issue another analysis is necessary:

# var=1
# cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_NT|grep -v "_" |cut -f-3|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1>=var) print $2,$3,$4,$1}' > loc-count_NT
# cat ~/Work/dataset/rm53/outdata/q5_chr-loc-strand-umi-pcr_T|grep -v "_" |cut -f-3|uniq -c|awk -v var="$var" '{OFS="\t"}{if ($1>=var) print $2,$3,$4,$1}' > loc-count_T
# bedtools intersect -a loc-count_T -b loc-count_NT -wa -wb | awk '{OFS="\t"}{print $0,$4/$8}' | sort -k9,9nr | cut -f-2,4,8-|awk '{OFS="\t"}{print $1,$2-5,$2+5,$5,$3,$4}' > T-and-NT-"$var".bed


