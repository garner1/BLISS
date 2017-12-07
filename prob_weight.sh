#!/usr/bin/env bash


for var in $(seq 0 0.2 4);do
    fc=$(echo $var|tr ',' '.')
    umi=1 
    parallel -k "echo {} && cat EDA_summary/data/tss_rnaseq_dsbCounts_rm84_{}days_umi'$umi'.bed |awk -v fc='$fc' '\$8>=fc'|tr '.' ','|datamash sum 13 && cat EDA_summary/data/tss_rnaseq_dsbCounts_rm84_{}days_umi'$umi'.bed |awk -v fc='$fc' '\$8<=-fc'|tr '.' ','|datamash sum 13" ::: 0 3 5 | paste - - - | tr ',' '.'|awk -v fc="$fc" -v umi="$umi" '{OFS="\t"; print $1,umi,fc,$2/$3}'
done
for var in $(seq 0 0.2 4);do
    fc=$(echo $var|tr ',' '.')
    umi=2
    parallel -k "echo {} && cat EDA_summary/data/tss_rnaseq_dsbCounts_rm84_{}days_umi'$umi'.bed |awk -v fc='$fc' '\$8>=fc'|tr '.' ','|datamash sum 13 && cat EDA_summary/data/tss_rnaseq_dsbCounts_rm84_{}days_umi'$umi'.bed |awk -v fc='$fc' '\$8<=-fc'|tr '.' ','|datamash sum 13" ::: 0 3 5 | paste - - - | tr ',' '.'|awk -v fc="$fc" -v umi="$umi" '{OFS="\t"; print $1,umi,fc,$2/$3}'
done
