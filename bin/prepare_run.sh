#!/bin/usr/env bash

# RUN AS: bash prepare_run.sh samplesheet.csv BICRO??? path_to_FASTQ
# head -1 samplesheet.csv as: BB78b,Caco2_Ctrl_2A,CATCAATC,Homo sapiens,5

rm -f run_pipeline.sh

echo "#!/bin/usr/env bash" >> run_pipeline.sh
echo >> run_pipeline.sh

inputfile=$1
run=$2
dir=$3

while read -r line; do
    code=`echo $line|cut -d',' -f1`
    barcode=`echo $line|cut -d',' -f3`
    echo bash bliss.sh "$code" human ../patterns/"$code"_*_"$barcode" 30 "$dir" >> run_pipeline.sh
    echo mkdir -p ~/Work/dataset/bliss/"$code"/outdata_"$barcode" >> run_pipeline.sh
    echo mv ~/Work/dataset/bliss/"$code"/outdata/* ~/Work/dataset/bliss/"$code"/outdata_"$barcode" >> run_pipeline.sh
    echo >> run_pipeline.sh
done < $inputfile

chmod +x run_pipeline.sh
