#!/usr/bin/env bash
numb_of_files=$1
out=$2
aux=$3
outcontrol=$4
auxcontrol=$5
in=$6
cutsite=$7

echo "Generate the barcoded FQ files ..."
parallel -k "cat {}|paste - -|awk '{print \$1\$(NF-1)\$NF}'|tr ']>' '\n@'|cut -d':' -f-7|paste - - | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > {.}.fa-1line" ::: $out/filtered.r1.fa
parallel -k "LC_ALL=C join {} $in/r1oneline.fq|awk '{print \$1,\$2,\$5,substr(\$NF,length(\$NF)-length(\$2),length(\$2))}'|tr ' ' '\n' > {.}.fq" ::: $out/filtered.r1.fa-1line
