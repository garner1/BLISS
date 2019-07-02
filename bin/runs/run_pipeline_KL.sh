#!/bin/usr/env bash

# bash /home/garner1/Work/pipelines/BLISS/bin/bliss.sh test mus /home/garner1/Work/pipelines/BLISS/patterns/KL03_Mut-DMSO1_CATCACGC 30 /home/garner1/Work/dataset/bliss/kentsisLab/fastq

bash /home/garner1/Work/pipelines/BLISS/bin/bliss.sh KL03 mus /home/garner1/Work/pipelines/BLISS/patterns/KL03_Mut-DMSO1_CATCACGC 30 /home/garner1/Work/dataset/bliss/kentsisLab/fastq
mkdir -p /home/garner1/Work/dataset/bliss/KL03/outdata_CATCACGC
mkdir -p /home/garner1/Work/dataset/bliss/KL03/auxdata_CATCACGC
mv /home/garner1/Work/dataset/bliss/KL03/outdata/* /home/garner1/Work/dataset/bliss/KL03/outdata_CATCACGC

bash /home/garner1/Work/pipelines/BLISS/bin/bliss.sh KL04 mus /home/garner1/Work/pipelines/BLISS/patterns/KL04_Mut-imatinib1_CATCACGC 30 /home/garner1/Work/dataset/bliss/kentsisLab/fastq
mkdir -p /home/garner1/Work/dataset/bliss/KL04/outdata_CATCACGC
mkdir -p /home/garner1/Work/dataset/bliss/KL04/auxdata_CATCACGC
mv /home/garner1/Work/dataset/bliss/KL04/outdata/* /home/garner1/Work/dataset/bliss/KL04/outdata_CATCACGC

bash /home/garner1/Work/pipelines/BLISS/bin/bliss.sh KL01 mus /home/garner1/Work/pipelines/BLISS/patterns/KL01_WT-DMSO1_CATCACGC 30 /home/garner1/Work/dataset/bliss/kentsisLab/fastq
mkdir -p /home/garner1/Work/dataset/bliss/KL01/outdata_CATCACGC
mkdir -p /home/garner1/Work/dataset/bliss/KL01/auxdata_CATCACGC
mv /home/garner1/Work/dataset/bliss/KL01/outdata/* /home/garner1/Work/dataset/bliss/KL01/outdata_CATCACGC

bash /home/garner1/Work/pipelines/BLISS/bin/bliss.sh KL02 mus /home/garner1/Work/pipelines/BLISS/patterns/KL02_WT-imatinib1_CATCACGC 30 /home/garner1/Work/dataset/bliss/kentsisLab/fastq
mkdir -p /home/garner1/Work/dataset/bliss/KL02/outdata_CATCACGC
mkdir -p /home/garner1/Work/dataset/bliss/KL02/auxdata_CATCACGC
mv /home/garner1/Work/dataset/bliss/KL02/outdata/* /home/garner1/Work/dataset/bliss/KL02/outdata_CATCACGC

