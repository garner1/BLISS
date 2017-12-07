#!/usr/bin/env bash
numb_of_files=$1
numbproc=$2
out=$3
r1=$4
r2=$5

echo 'Quality control ...'

if [ $numb_of_files == 1 ]; then
    fastqc -t $numbproc -o $out --nogroup $r1
else
    parallel fastqc -o $out -t $numbproc --nogroup {} ::: $r1 $r2
fi

echo 'Done'
