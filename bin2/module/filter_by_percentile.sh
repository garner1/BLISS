#!/usr/bin/env bash
###########################################
## use liver1-zy4.gene.expr from Bin Ren ##
###########################################

###########################################
# tail -n +2 liver1-zy4.gene.expr | awk '{OFS="\t"; print $3,$4,$4+1,$6,$1}' > ~/liver1-zy4.TSS_RPKM_GENEID.bed
# bedtools window -a liver1-zy4.TSS_RPKM_GENEID.bed -b ~/Work/dataset/bliss/RM102_BICRO29/outdata_*/q10_chr-loc-countDifferentUMI.bed -c |awk '{OFS="\t"; print $1,$2,$3,$4,$5,$6}' > RM102.geneLOC_RPKM_DSB.tsv
###########################################

file=$1				# file with gene_RPKM_DSB info
rpkm=$2				# field containing RPKM
dsb=$3				# field containing DSB

cut -f $rpkm $file | sta --p 10,20,30,40,50,60,70,80,90|tail -1|tr '\t' '\n'|head -9 > percentiles

rm -f "$file"__expression-fragility.dat
line_old=0
while IFS= read -r line
do
    cat $file | awk -v line="$line" -v line_old="$line_old" -v rpkm="$rpkm" '$rpkm < line && $rpkm>=line_old' > newfile
    cat newfile | tr '.' ',' | datamash mean $rpkm mean $dsb | tr ',' '.' >> "$file"__expression-fragility.dat
    line_old="$line"
done < percentiles
cat $file | awk -v line_old="$line_old" -v rpkm="$rpkm" '$rpkm>=line_old' > newfile
cat newfile | tr '.' ',' | datamash mean $rpkm mean $dsb | tr ',' '.' >> "$file"__expression-fragility.dat

rm percentiles newfile
