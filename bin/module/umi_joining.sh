#!/usr/bin/env bash
numb_of_files=$1
out=$2
experiment=$3
aux=$4
outcontrol=$5
auxcontrol=$6
quality=$7
cutsite=$8

echo 'Selecting unique UMIs'
if [[ -z "$cutsite" && $numb_of_files == 1 ]]; then # IF THERE IS NO ENZYME && WITH SE READS
    bedtools bamtobed -i $out/$experiment.q$quality.bam | awk '$6 == "+"' | awk '{OFS="\t";print $4,$1,$2,"+"}' > $aux/forward & pid1=$! # if + strand DSB location is the second field
    bedtools bamtobed -i $out/$experiment.q$quality.bam | awk '$6 == "-"' | awk '{OFS="\t";print $4,$1,$3,"-"}' > $aux/reverse & pid1=$! # if - strand DSB location is the third field
    # samtools view -F 0x10 $out/$experiment.q$quality.bam | cut -f1,3,4 | awk '{print $0, "\t+"}' > $aux/forward & pid1=$!
    # samtools view -f 0x10 $out/$experiment.q$quality.bam | cut -f1,3,4 | awk '{print $0, "\t-"}' > $aux/reverse & pid2=$!
    wait $pid1
    wait $pid2
    cat $aux/forward $aux/reverse | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $aux/id.chr.loc.strand & pid1=$!
    cat $out/filtered.r1.fa | tr -d ">" | cut -d':' -f-7 | paste - - > $aux/id.umi.barcode.genomic_aux & pid2=$!
    wait $pid1
    wait $pid2

    cat $aux/id.umi.barcode.genomic_aux | awk '{if (NF == 4) print; else if (NF == 5) print $1,$3,$4,$5}' | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $aux/id.umi.barcode.genomic

    LC_ALL=C join $aux/id.chr.loc.strand $aux/id.umi.barcode.genomic | cut -d' ' -f-5 |LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -t' ' -k2,2 -k3,3n -k4,4 -k5,5 |
    awk '{print $2,$3,$3+1,$4,$5,$1}' | tr " " "\t" > $out/_q$quality.bed 
fi

if [[ -z "$cutsite" && $numb_of_files == 2 ]]; then # IF THERE IS NO ENZYME && WITH PE READS
    bedtools bamtobed -i $out/$experiment.q$quality.bam | awk '$6 == "+"' | awk '{OFS="\t";print $4,$1,$2,"+"}' > $aux/forward & pid1=$!
    bedtools bamtobed -i $out/$experiment.q$quality.bam | awk '$6 == "-"' | awk '{OFS="\t";print $4,$1,$3,"-"}' > $aux/reverse & pid1=$!
    # samtools view -F 0x10 $out/$experiment.q$quality.bam | cut -f1,3,4 | awk '{print $0, "\t+"}' > $aux/forward & pid1=$!
    # samtools view -f 0x10 $out/$experiment.q$quality.bam | cut -f1,3,4 | awk '{print $0, "\t-"}' > $aux/reverse & pid2=$!
    wait $pid1
    wait $pid2
    cat $aux/forward $aux/reverse |LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $aux/id.chr.loc.strand & pid1=$!
    cat $out/filtered.r1.fa | tr -d ">" | cut -d':' -f-7 | paste - - > $aux/id.umi.barcode.genomic_aux & pid2=$!
    wait $pid1
    wait $pid2
    cat $aux/id.umi.barcode.genomic_aux | awk '{if (NF == 4) print; else if (NF == 5) print $1,$3,$4,$5}' | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $aux/id.umi.barcode.genomic
    LC_ALL=C join $aux/id.chr.loc.strand $aux/id.umi.barcode.genomic | cut -d' ' -f-5 | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -t' ' -k2,2 -k3,3n -k4,4 -k5,5 | 
    awk '{print $2,$3,$3+1,$4,$5,$1}' | tr " " "\t" > $out/_q$quality.bed
fi

if [[ ! -z "$cutsite" && $numb_of_files == 1 ]]; then # IF THERE IS ENZYME && WITH SE READS
    bedtools bamtobed -i $out/$experiment.q$quality.bam | awk '$6 == "+"' | awk '{OFS="\t";print $4,$1,$2,"+"}' > $aux/forward & pid1=$!
    bedtools bamtobed -i $out/$experiment.q$quality.bam | awk '$6 == "-"' | awk '{OFS="\t";print $4,$1,$3,"-"}' > $aux/reverse & pid1=$!
    # samtools view -F 0x10 $out/$experiment.q$quality.bam | cut -f1,3,4 | awk '{print $0, "\t+"}' > $aux/forward & pid1=$!
    # samtools view -f 0x10 $out/$experiment.q$quality.bam | cut -f1,3,4 | awk '{print $0, "\t-"}' > $aux/reverse & pid2=$!
    wait $pid1
    wait $pid2
    cat $aux/forward $aux/reverse | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $aux/id.chr.loc.strand & pid1=$!
    cat $out/filtered.r1.fa | tr -d ">" | cut -d':' -f-7 | paste - - > $aux/id.umi.barcode.genomic_aux & pid2=$!
    wait $pid1
    wait $pid2
    samtools view -F 0x10 $outcontrol/$experiment.q$quality.bam | cut -f1,3,4 | awk '{print $0, "\t+"}' > $auxcontrol/forward & pid1=$!
    samtools view -f 0x10 $outcontrol/$experiment.q$quality.bam | cut -f1,3,4 | awk '{print $0, "\t-"}' > $auxcontrol/reverse & pid2=$!
    wait $pid1
    wait $pid2
    cat $auxcontrol/forward $auxcontrol/reverse | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $auxcontrol/id.chr.loc.strand & pid1=$!

    cat $outcontrol/filtered.r1.fa | tr -d ">" | cut -d':' -f-7 | paste - - > $auxcontrol/id.umi.barcode.genomic_aux & pid2=$!
    wait $pid1
    wait $pid2

    cat $aux/id.umi.barcode.genomic_aux | awk '{if (NF == 4) print; else if (NF == 5) print $1,$3,$4,$5}' | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $aux/id.umi.barcode.genomic

    cat $auxcontrol/id.umi.barcode.genomic_aux | awk '{if (NF == 4) print; else if (NF == 5) print $1,$3,$4,$5}' | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $auxcontrol/id.umi.barcode.genomic

    LC_ALL=C join $aux/id.chr.loc.strand $aux/id.umi.barcode.genomic|cut -d' ' -f-5|LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -t' ' -k2,2 -k3,3n -k4,4 -k5,5|
    awk '{print $2,$3,$3+1,$4,$5,$1}' | tr " " "\t" > $out/_q$quality.bed & pid1=$!
    LC_ALL=C join $auxcontrol/id.chr.loc.strand $auxcontrol/id.umi.barcode.genomic|cut -d' ' -f-5|LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -t' ' -k2,2 -k3,3n -k4,4 -k5,5|
    awk '{print $2,$3,$3+1,$4,$5,$1}' | tr " " "\t" > $outcontrol/_q$quality.bed &pid2=$!
    wait $pid1
    wait $pid2
fi

if [[ ! -z "$cutsite" && $numb_of_files == 2 ]]; then # IF THERE IS ENZYME && WITH PE READS
    bedtools bamtobed -i $out/$experiment.q$quality.bam | awk '$6 == "+"' | awk '{OFS="\t";print $4,$1,$2,"+"}' > $aux/forward & pid1=$!
    bedtools bamtobed -i $out/$experiment.q$quality.bam | awk '$6 == "-"' | awk '{OFS="\t";print $4,$1,$3,"-"}' > $aux/reverse & pid1=$!
    # samtools view -F 0x10 $out/$experiment.q$quality.bam | cut -f1,3,4 | awk '{print $0, "\t+"}' > $aux/forward & pid1=$!
    # samtools view -f 0x10 $out/$experiment.q$quality.bam | cut -f1,3,4 | awk '{print $0, "\t-"}' > $aux/reverse & pid2=$!
    wait $pid1
    wait $pid2
    cat $aux/forward $aux/reverse | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $aux/id.chr.loc.strand & pid1=$!
    cat $out/filtered.r1.fa | tr -d ">" | cut -d':' -f-7 | paste - - > $aux/id.umi.barcode.genomic_aux & pid2=$!
    wait $pid1
    wait $pid2
    samtools view -F 0x10 $outcontrol/$experiment.q$quality.bam | cut -f1,3,4 | awk '{print $0, "\t+"}' > $auxcontrol/forward & pid1=$!
    samtools view -f 0x10 $outcontrol/$experiment.q$quality.bam | cut -f1,3,4 | awk '{print $0, "\t-"}' > $auxcontrol/reverse & pid2=$!
    wait $pid1
    wait $pid2
    cat $auxcontrol/forward $auxcontrol/reverse | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $auxcontrol/id.chr.loc.strand & pid1=$!
    cat $outcontrol/filtered.r1.fa | tr -d ">" | cut -d':' -f-7 | paste - - > $auxcontrol/id.umi.barcode.genomic_aux & pid2=$!
    wait $pid1
    wait $pid2

    cat $aux/id.umi.barcode.genomic_aux | awk '{if (NF == 4) print; else if (NF == 5) print $1,$3,$4,$5}' | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $aux/id.umi.barcode.genomic

    cat $auxcontrol/id.umi.barcode.genomic_aux | awk '{if (NF == 4) print; else if (NF == 5) print $1,$3,$4,$5}' | LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -k1,1 > $auxcontrol/id.umi.barcode.genomic

    LC_ALL=C join $aux/id.chr.loc.strand $aux/id.umi.barcode.genomic|cut -d' ' -f-5|LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -t' ' -k2,2 -k3,3n -k4,4 -k5,5|
    awk '{print $2,$3,$3+1,$4,$5,$1}' | tr " " "\t" > $out/_q$quality.bed & pid1=$!
    LC_ALL=C join $auxcontrol/id.chr.loc.strand $auxcontrol/id.umi.barcode.genomic|cut -d' ' -f-5|LC_ALL=C sort --parallel=8 --temporary-directory=$HOME/tmp -t' ' -k2,2 -k3,3n -k4,4 -k5,5|
    awk '{print $2,$3,$3+1,$4,$5,$1}' | tr " " "\t" > $outcontrol/_q$quality.bed &pid2=$!
    wait $pid1
    wait $pid2
fi
echo 'Done'
