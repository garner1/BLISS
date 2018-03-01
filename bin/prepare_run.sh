#!/bin/usr/env bash

rm -f run_pipeline.sh

echo "#!/bin/usr/env bash" >> run_pipeline.sh
echo >> run_pipeline.sh

inputfile=$1
run=BICRO66
dir=/media/bicroserver_2-seq/BICRO66/FASTQ

while read -r line; do
    code=`echo $line|cut -d',' -f1`
    barcode=`echo $line|cut -d',' -f3`
    echo bash bliss.sh "$code" human ../patterns/"$code"_*_"$barcode" 30 "$dir" >> run_pipeline.sh
    echo mkdir -p ~/Work/dataset/bliss/"$code"/outdata_"$barcode" >> run_pipeline.sh
    echo mv ~/Work/dataset/bliss/"$code"/outdata/* ~/Work/dataset/bliss/"$code"/outdata_"$barcode" >> run_pipeline.sh
    echo >> run_pipeline.sh
done < $inputfile

chmod +x run_pipeline.sh
