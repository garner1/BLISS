#!/usr/bin/env bash

# barcode=CATCACGC
# code=BB65
# run=IMB02
# exp="$run"_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 /media/bicroserver_2-seq/COLLABORATIONS/IMB02/fastq
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

barcode=GTCGTCGC
code=BB65
run=IMB02
exp="$run"_"$code"
./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 /media/bicroserver_2-seq/COLLABORATIONS/IMB02/fastq
mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

barcode=ACGACCGC
code=BB65
run=IMB02
exp="$run"_"$code"
./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 /media/bicroserver_2-seq/COLLABORATIONS/IMB02/fastq
mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

barcode=TGATGCGC
code=BB65
run=IMB02
exp="$run"_"$code"
./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 /media/bicroserver_2-seq/COLLABORATIONS/IMB02/fastq
mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

barcode=CATCAATC
code=BB65
run=IMB02
exp="$run"_"$code"
./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 /media/bicroserver_2-seq/COLLABORATIONS/IMB02/fastq
mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

barcode=GTCGTATC
code=BB65
run=IMB02
exp="$run"_"$code"
./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 /media/bicroserver_2-seq/COLLABORATIONS/IMB02/fastq
mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

barcode=ACGACATC
code=BB65
run=IMB02
exp="$run"_"$code"
./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 /media/bicroserver_2-seq/COLLABORATIONS/IMB02/fastq
mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

barcode=TGATGATC
code=BB65
run=IMB02
exp="$run"_"$code"
./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 /media/bicroserver_2-seq/COLLABORATIONS/IMB02/fastq
mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

##############################################################
# barcode=CATCACGC
# code=BB61
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTCGC
# code=BB61
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# code=BB61
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=BB61
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# code=BB61
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# code=BB61
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# code=BB61
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# code=BB61
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCATCC
# code=BB61
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# code=BB61
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCACGC
# code=BB62
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTCGC
# code=BB62
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# code=BB62
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=BB62
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# code=BB62
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# code=BB62
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# code=BB62
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# code=BB62
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCATCC
# code=BB62
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# code=BB62
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCACGC
# code=FR2
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTCGC
# code=FR2
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# code=FR2
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=FR2
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# code=FR2
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# code=FR2
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCACGC
# code=FR1
# exp="$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTCGC
# code=FR1
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# code=FR1
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=FR1
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# code=FR1
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# code=FR1
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"


####################################################################

# barcode=ACGACCGC
# code=BB59
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=BB59
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# code=BB59
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# code=BB59
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# code=BB59
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# code=BB59
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCATCC
# code=BB59
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# code=BB59
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# code=BB60
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=BB60
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# code=BB60
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# code=BB60
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# code=BB60
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# code=BB60
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCATCC
# code=BB60
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# code=BB60
# exp="$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/*"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

################################################################################

# barcode=ACGACATC
# code=rm88
# exp=bicro25_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# code=rm88
# exp=bicro25_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=rm88
# exp=bicro25_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# code=rm90
# exp=bicro26_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# code=rm90
# exp=bicro26_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCATCC
# code=rm96
# exp=bicro27_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# code=rm96
# exp=bicro27_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

################################################################################

# barcode=CATCACGC
# code=CGATGT
# exp=IDB_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/dellinoLab_BLISS_MCF10A_AsiSI_untreated_CATCACGC 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCACGC
# code=TGACCA
# exp=IDB_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/dellinoLab_MCF10A_AsiSI_treated_with_4-OHT_CATCACGC 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

################################################################################

# barcode=ACGACATC
# code=TK30
# exp=bicro25_"$code"
# ./bliss_1.sh "$exp" mm9 ../patterns/tk30_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

################################################################################
# barcode=GTCGTCGC
# code=BB52
# exp=bicro51_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# code=BB53
# exp=bicro51_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=BB53
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# code=BB54
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" mm10 ../patterns/"$exp"_*_"$barcode" 5 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# code=BB54
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" mm10 ../patterns/"$exp"_*_"$barcode" 5 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# code=BB54
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" mm10 ../patterns/"$exp"_*_"$barcode" 5 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# code=BB54
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" mm10 ../patterns/"$exp"_*_"$barcode" 5 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# code=BB55
# exp=bicro51_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=BB55
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# code=BB55
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# code=BB55
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# code=BB55
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# code=BB55
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCATCC
# code=BB55
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# code=BB55
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# code=BB56
# exp=bicro51_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=BB56
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# code=BB56
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# code=BB56
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# code=BB56
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# code=BB56
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCATCC
# code=BB56
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# code=BB56
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# code=BB59
# exp=bicro51_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=BB59
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# code=BB59
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# code=BB59
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# code=BB59
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# code=BB59
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCATCC
# code=BB59
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# code=BB59
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# code=BB60
# exp=bicro51_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=BB60
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# code=BB60
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# code=BB60
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# code=BB60
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# code=BB60
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCATCC
# code=BB60
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# code=BB60
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCACGC
# code=FR1
# exp=bicro51_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTCGC
# code=FR1
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# code=FR1
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=FR1
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# code=FR1
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# code=FR1
# exp=bicro51_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_*_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

######################################################################################
# barcode=CATCACGC
# code=BB45
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/BICRO49_BB45_K562_top2bKO_DMSO_rp1_CATCACGC 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTCGC
# code=BB45
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/BICRO49_BB45_K562_top2bKO_ETO20_rp1_GTCGTCGC 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCACGC
# code=BB46
# exp=BICRO49_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_K562_top2bKO_DMSO_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTCGC
# code=BB46
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_K562_top2bKO_ETO20_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# code=BB47
# exp=BICRO49_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_TK6_untr_DMSO_rp1_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=BB47
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_TK6_untr_ETO20_rp1_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# code=BB47
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_TK6_aph2_DMSO_rp1_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# code=BB47
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_TK6_aph2_ETO20_rp1_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# code=BB47
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_TK6_drb200_DMSO_rp1_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# code=BB47
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_TK6_drb200_ETO20_rp1_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCATCC
# code=BB47
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_TK6_aph2_drb200_DMSO_rp1_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# code=BB47
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_TK6_aph2_drb200_ETO20_rp1_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# code=BB48
# exp=BICRO49_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_TK6_untr_DMSO_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=BB48
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_TK6_untr_ETO20_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# code=BB48
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_TK6_aph2_DMSO_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# code=BB48
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_TK6_aph2_ETO20_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# code=BB48
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_TK6_drb200_DMSO_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# code=BB48
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_TK6_drb200_ETO20_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCATCC
# code=BB48
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_TK6_aph2_drb200_DMSO_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# code=BB48
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_TK6_aph2_drb200_ETO20_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCACGC
# code=BB49
# exp=BICRO49_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_HTETOP_wt_DMSO_rp1_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTCGC
# code=BB49
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_HTETOP_wt_ETO20_rp1_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# code=BB49
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_HTETOP_top2aKO_DMSO_rp1_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=BB49
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_HTETOP_top2aKO_ETO2_rp1_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# code=BB49
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_HTETOP_top2bKO_DMSO_rp1_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# code=BB49
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_HTETOP_top2BKO_ETO2_rp1_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# code=BB49
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_HTETOP_doubleKO_DMSO_rp1_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# code=BB49
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_HTETOP_doubleKO_ETO2_rp1_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCACGC
# code=BB50
# exp=BICRO49_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_HTETOP_wt_DMSO_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTCGC
# code=BB50
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_HTETOP_wt_ETO20_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# code=BB50
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_HTETOP_top2aKO_DMSO_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=BB50
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_HTETOP_top2aKO_ETO2_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# code=BB50
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_HTETOP_top2bKO_DMSO_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# code=BB50
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_HTETOP_top2BKO_ETO2_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# code=BB50
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_HTETOP_doubleKO_DMSO_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCATCC
# code=BB50
# exp=BICRO49_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_HTETOP_doubleKO_ETO2_rp2_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

#############################################################
# barcode=CATCACGC
# code=rm106
# exp=bicro35_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
#############################################################
# barcode=GTCGTTCC
# code=bb20
# exp=bicro41_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# code=bb21
# exp=bicro41_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# code=bb22
# exp=bicro41_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
#############################################################
# barcode=GTCGTTCC
# code=bb25
# exp=bicro47_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# code=bb25
# exp=bicro47_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# code=bb28
# exp=bicro47_"$code"
# ./bliss_1.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCACGC
# code=bb28
# exp=bicro47_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCATCC
# code=bb28
# exp=bicro47_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# code=bb28
# exp=bicro47_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# code=bb28
# exp=bicro47_"$code"
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

#############################################################
# barcode=ACGACATC
# exp=bicro25_tk30
# code=tk30
# ./bliss_1.sh "$exp" mm9 ../patterns/"$code"_"$barcode" 30 
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTCGC
# exp=bicro26_tk31
# code=tk31
# ./bliss_1.sh "$exp" mm9 ../patterns/"$code"_"$barcode" 30 
# mkdir -vp ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# exp=bicro25_tk32
# code=tk32
# ./bliss_2.sh "$exp" mm10 ../patterns/"$code"_"$barcode" 5
# mkdir -p ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# exp=bicro29_rm91
# code=rm91
# ./bliss_1.sh "$exp" mm9 ../patterns/"$code"_"$barcode" 30 
# mkdir -vp ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTCGC
# exp=bicro29_rm102
# code=rm102
# ./bliss_1.sh "$exp" mm9 ../patterns/"$code"_"$barcode" 30 
# mkdir -vp ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

###############################################################
# barcode=GTCGTCGC
# ./bliss.sh RM106_BICRO35 hg19 ../patterns/rm106_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/RM106_BICRO35/outdata_"$barcode"
# mv ~/Work/dataset/bliss/RM106_BICRO35/outdata/* ~/Work/dataset/bliss/RM106_BICRO35/outdata_"$barcode"

# barcode=TGATGCGC
# ./bliss.sh RM107_BICRO35 hg19 ../patterns/rm107_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/RM107_BICRO35/outdata_"$barcode"
# mv ~/Work/dataset/bliss/RM107_BICRO35/outdata/* ~/Work/dataset/bliss/RM107_BICRO35/outdata_"$barcode"

# barcode=GTCGTATC
# ./bliss.sh RM108_BICRO35 hg19 ../patterns/rm108_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/RM108_BICRO35/outdata_"$barcode"
# mv ~/Work/dataset/bliss/RM108_BICRO35/outdata/* ~/Work/dataset/bliss/RM108_BICRO35/outdata_"$barcode"

#################################################################
# barcode=CATCACGC
# ./bliss.sh bicro37_bb05 mm9 ../patterns/bb05_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/bicro37_bb05/outdata_"$barcode"
# mv ~/Work/dataset/bliss/bicro37_bb05/outdata/* ~/Work/dataset/bliss/bicro37_bb05/outdata_"$barcode"

# barcode=ACGACCGC
# ./bliss.sh bicro37_bb07 mm9 ../patterns/bb07_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/bicro37_bb07/outdata_"$barcode"
# mv ~/Work/dataset/bliss/bicro37_bb07/outdata/* ~/Work/dataset/bliss/bicro37_bb07/outdata_"$barcode"

# barcode=TGATGATC
# ./bliss.sh bicro37_bb12 hg19 ../patterns/bb12_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/bicro37_bb12/outdata_"$barcode"
# mv ~/Work/dataset/bliss/bicro37_bb12/outdata/* ~/Work/dataset/bliss/bicro37_bb12/outdata_"$barcode"

# barcode=CATCATCC
# ./bliss.sh bicro37_bb12 hg19 ../patterns/bb12_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/bicro37_bb12/outdata_"$barcode"
# mv ~/Work/dataset/bliss/bicro37_bb12/outdata/* ~/Work/dataset/bliss/bicro37_bb12/outdata_"$barcode"

# barcode=GTCGTTCC
# ./bliss.sh bicro37_bb12 hg19 ../patterns/bb12_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/bicro37_bb12/outdata_"$barcode"
# mv ~/Work/dataset/bliss/bicro37_bb12/outdata/* ~/Work/dataset/bliss/bicro37_bb12/outdata_"$barcode"

# barcode=TGATGATC
# ./bliss.sh bicro37_bb13 hg19 ../patterns/bb13_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/bicro37_bb13/outdata_"$barcode"
# mv ~/Work/dataset/bliss/bicro37_bb13/outdata/* ~/Work/dataset/bliss/bicro37_bb13/outdata_"$barcode"

# barcode=CATCATCC
# ./bliss.sh bicro37_bb13 hg19 ../patterns/bb13_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/bicro37_bb13/outdata_"$barcode"
# mv ~/Work/dataset/bliss/bicro37_bb13/outdata/* ~/Work/dataset/bliss/bicro37_bb13/outdata_"$barcode"

# barcode=GTCGTTCC
# ./bliss.sh bicro37_bb13 hg19 ../patterns/bb13_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/bicro37_bb13/outdata_"$barcode"
# mv ~/Work/dataset/bliss/bicro37_bb13/outdata/* ~/Work/dataset/bliss/bicro37_bb13/outdata_"$barcode"

#################################################################
# barcode=CATCACGC
# exp=bicro38_rm111
# code=rm111
# ./bliss_1.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTCGC
# exp=bicro38_rm111
# code=rm111
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACCGC
# exp=bicro38_rm111
# code=rm111
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGCGC
# exp=bicro38_rm111
# code=rm111
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# exp=bicro38_rm111
# code=rm111
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# exp=bicro38_rm111
# code=rm111
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCAATC
# exp=bicro38_rm113
# code=rm113
# ./bliss_1.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bicro38_rm113
# code=rm113
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# exp=bicro38_rm113
# code=rm113
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# exp=bicro38_rm113
# code=rm113
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bicro38_rm115
# code=rm115
# ./bliss_1.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# exp=bicro38_rm115
# code=rm115
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=TGATGATC
# exp=bicro38_rm115
# code=rm115
# ./bliss_2.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCACGC
# exp=bicro38_cg01
# code=cg01
# ./bliss_1.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCACGC
# exp=bicro38_cg02
# code=cg02
# ./bliss_1.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCACGC
# exp=bicro38_cg03
# code=cg03
# ./bliss_1.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=CATCACGC
# exp=bicro38_cg04
# code=cg04
# ./bliss_1.sh "$exp" hg19 ../patterns/"$code"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
########################################################################################

# barcode=GTCGTATC
# exp=bb23
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=CATCATCC
# exp=bb23
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# exp=bb24
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=CATCACGC
# exp=bb24
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTTCC
# exp=bb25
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGCGC
# exp=bb25
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb26
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb26
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb26
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=CATCATCC
# exp=bb26
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=GTCGTTCC
# exp=bb26
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=CATCACGC
# exp=bb26
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=ACGACATC
# exp=bb28
# ./bliss_1.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb28
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=CATCATCC
# exp=bb28
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=GTCGTTCC
# exp=bb28
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=CATCACGC
# exp=bb28
# ./bliss_2.sh "$exp" hg19 ../patterns/"$exp"_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb29
# ./bliss_1.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb29
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb29
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb30
# ./bliss_1.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb30
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb30
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb31
# ./bliss_1.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb31
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb31
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb32
# ./bliss_1.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb32
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb32
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb33
# ./bliss_1.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb33
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb33
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb34
# ./bliss_1.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb34
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb34
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb35
# ./bliss_1.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb35
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb35
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb36
# ./bliss_1.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb36
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb36
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb37
# ./bliss_1.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb37
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb37
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb38
# ./bliss_1.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb38
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb38
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb39
# ./bliss_1.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb39
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb39
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb40
# ./bliss_1.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb40
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb40
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb41
# ./bliss_1.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb41
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb41
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb42
# ./bliss_1.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb42
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb42
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb43
# ./bliss_1.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb43
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb43
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"

# barcode=GTCGTATC
# exp=bb44
# ./bliss_1.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=ACGACATC
# exp=bb44
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# barcode=TGATGATC
# exp=bb44
# ./bliss_2.sh "$exp" hg19 ../patterns/bb29-44_"$barcode" 30 
# mkdir ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-strand-umi-pcr__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI.bed ~/Work/dataset/bliss/"$exp"/outdata/q30_chr-loc-countDifferentUMI__"$exp"_"$barcode".bed
# mv ~/Work/dataset/bliss/"$exp"/outdata/summary.txt ~/Work/dataset/bliss/"$exp"/outdata/summary__"$exp"_"$barcode".txt
# mv ~/Work/dataset/bliss/"$exp"/outdata/* ~/Work/dataset/bliss/"$exp"/outdata_"$barcode"













