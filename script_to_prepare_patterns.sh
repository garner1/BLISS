#!/usr/bin/env bash

# Example of input:
# BB65      TK6_wt_DMSO_rp1	CATCACGC
# BB65      TK6_wt_ETO_rp1	 GTCGTCGC
# BB65      TK6_DRB_DMSO_rp1	     ACGACCGC
# BB65      TK6_DRB_ETO_rp1      TGATGCGC
# BB65      TK6_Triptolite_DMSO_rp1           CATCAATC
# BB65      TK6_Triptolite_ETO_rp1 	    GTCGTATC
# BB65      TK6_ActD_DMSO_rp1		    ACGACATC
# BB65      TK6_ActD_ETO_rp1		    TGATGATC

count=0
while IFS='' read -r line || [[ -n "$line" ]]; do
    count=$(( $count + 1 ))
    if [[ $count > 0 ]]
    then
	run=IMB02
	exp=`echo $line | cut -d' ' -f1`
	name=`echo $line | cut -d' ' -f2`
	bc=`echo $line | cut -d' ' -f3`
	organism=Hg19
	
	filename=/home/garner1/Work/pipelines/BLISS/patterns/"$run"_"$exp"_"$name"_org"$organism"_"$bc"
	touch $filename
	echo "^ 8...8 "$bc"[1,0,0] 1...1000 $" > $filename
    fi
done < "$1"
