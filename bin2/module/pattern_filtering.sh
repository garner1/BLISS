#!/usr/bin/env bash
in=$1
outcontrol=$2
out=$3
patfile=$4 
cutsite=$5

echo "Filterig reads based on patterns ..."
if [ ! -z "$cutsite" ]; then
    len=`echo $cutsite | awk '{print length($0)}'`
    cat $in/r1.fa | parallel --tmpdir $HOME/tmp --block 100M -k --pipe -L 2 "scan_for_matches $patfile - " | paste - - | awk -v var1="$len" -v var2="$cutsite" '{if(substr($NF,0,var1)==var2) print $0}' | tr '\t' '\n'> $outcontrol/filtered.r1.fa & pid1=$!
    cat $in/r1.fa | parallel --tmpdir $HOME/tmp --block 100M -k --pipe -L 2 "scan_for_matches $patfile - " | paste - - | awk -v var1="$len" -v var2="$cutsite" '{if(substr($NF,0,var1)!=var2) print $0}' | tr '\t' '\n'> $out/filtered.r1.fa & pid2=$!
    wait $pid1
    wait $pid2
else
    cat $in/r1.fa | parallel --tmpdir $HOME/tmp --block 100M -k --pipe -L 2 "scan_for_matches $patfile - " > $out/filtered.r1.fa
fi
echo "Done"
