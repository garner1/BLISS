#!/bin/usr/env bash

inputfile=$1

while read -r line; do 
    f1=`echo $line|cut -d',' -f1`
    f2=`echo $line|cut -d',' -f2|tr '/' '-'`
    f3=`echo $line|cut -d',' -f3`
    touch "$f1"_"$f2"_"$f3" 
    echo ^ 8...8 $f3[2,0,0] 1...1000 $ > "$f1"_"$f2"_"$f3" 
done < $inputfile
