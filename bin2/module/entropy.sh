#!/usr/bin/env bash

# exp=$1
# file=$2
#file=/home/garner1/Work/dataset/"$exp"/outdata/q5_c*


# norma=`cat $file | grep -v "_" | wc -l`

# cat $file | grep -v "_" | cut -f-2 | LC_ALL=C sort -k1,1 -k2,2 | LC_ALL=C uniq -c | awk '{print $1}' |numnormalize | awk -v d="$norma" '{e-=$1*log($1)} END {print e, e/log(d), (0.999994-e/log(d))/0.000001}'

# normaPCR=`cat $file | grep -v "_" | wc -l`
# entPCR=`cat $file | grep -v "_" | cut -f6 | numnormalize | awk -v d="$normaPCR" '{e-=$1*log($1)} END {print e}'`
# entPCRnorm=`cat $file | grep -v "_" | cut -f6 | numnormalize | awk -v d="$normaPCR" '{e-=$1*log($1)} END {print log(d)-e}'`
# purityPCR=`cat $file | grep -v "_" | cut -f6 | numnormalize | awk -v d="$normaPCR" '{p+=$1*$1} END {print p}'`
# purityLOC=`cat $file | grep -v "_" | cut -f-2 | LC_ALL=C uniq -c | awk '{print $1}' |numnormalize | awk -v d="$normaLOC" '{p+=$1*$1} END {print p}'`
############################################################
file=$1
norma=$(cat $file | datamash sum 5)
echo $norma

d=$(cut -f5 $file | awk -v norma="$norma" '{print $1/norma}'| awk '$1>0'|wc -l)
echo $d

cut -f5 $file | awk -v norma="$norma" '{print $1/norma}'| awk '$1>0' |awk -v d="$d" '{e-=$1*log($1)} END {print log(d)-e}' 
