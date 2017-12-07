#!/usr/bin/env bash

file=$1

parallel ./entropy.sh {} ::: "$file"_*_q* | sort > file-ent

norma=`tail -1 $file | awk '{print $NF}'`

paste $file file-ent | awk -v norma="$norma" '{print $1,$2,$3,$5,$5/log(norma)}' > "$file"-reads-dsb-ent-entNorm
