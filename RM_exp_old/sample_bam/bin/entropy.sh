#!/usr/bin/env bash

exp=$1

file=/home/garner1/Work/dataset/"$exp"/outdata/q5_c*

normaPCR=`cat $file | grep -v "_" | wc -l`

normaLOC=`cat $file | grep -v "_" | cut -f-2 | LC_ALL=C sort -u | wc -l`

entPCR=`cat $file | grep -v "_" | cut -f6 | numnormalize | awk -v d="$normaPCR" '{e-=$1*log($1)} END {print e}'`

entLOC=`cat $file | grep -v "_" | cut -f-2 | LC_ALL=C uniq -c | awk '{print $1}' |numnormalize | awk -v d="$normaLOC" '{e-=$1*log($1)} END {print e}'`

entPCRnorm=`cat $file | grep -v "_" | cut -f6 | numnormalize | awk -v d="$normaPCR" '{e-=$1*log($1)} END {print log(d)-e}'`

entLOCnorm=`cat $file | grep -v "_" | cut -f-2 | LC_ALL=C uniq -c | awk '{print $1}' |numnormalize | awk -v d="$normaLOC" '{e-=$1*log($1)} END {print log(d)-e}'`

# purityPCR=`cat $file | grep -v "_" | cut -f6 | numnormalize | awk -v d="$normaPCR" '{p+=$1*$1} END {print p}'`

# purityLOC=`cat $file | grep -v "_" | cut -f-2 | LC_ALL=C uniq -c | awk '{print $1}' |numnormalize | awk -v d="$normaLOC" '{p+=$1*$1} END {print p}'`


echo $exp $entPCR $normaPCR $entLOC $normaLOC $entPCRnorm $entLOCnorm
