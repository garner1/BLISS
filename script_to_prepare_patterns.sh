#!/usr/bin/env bash

count=0
while IFS='' read -r line || [[ -n "$line" ]]; do
    count=$(( $count + 1 ))
    if [[ $count > 1 ]]
    then
	exp=`echo $line | cut -d' ' -f1`
	name=`echo $line | cut -d' ' -f2`
	bc=`echo $line | cut -d' ' -f3`
	organism=`echo $line | cut -d' ' -f5`
	
	filename=/home/garner1/Work/pipelines/BLISS/patterns/bicro51_"$exp"_"$name"_org"$organism"_"$bc"
	touch $filename
	echo "^ 8...8 "$bc"[1,0,0] 1...1000 $" > $filename
    fi
done < "$1"
