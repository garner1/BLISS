#!/bin/usr/env bash

# bash bliss.sh RM150 human ../patterns/RM150_HBEC-OFF_GTCGTCGC 30 /home/garner1/Work/dataset/bliss/fastq
# mkdir -p /home/garner1/Work/dataset/bliss/RM150/outdata_GTCGTCGC
# mv /home/garner1/Work/dataset/bliss/RM150/outdata/* /home/garner1/Work/dataset/bliss/RM150/outdata_GTCGTCGC

# bash bliss.sh RM151 human ../patterns/RM151_HBEC-ON-24h_ACGACCGC 30 /home/garner1/Work/dataset/bliss/fastq
# mkdir -p /home/garner1/Work/dataset/bliss/RM151/outdata_ACGACCGC
# mv /home/garner1/Work/dataset/bliss/RM151/outdata/* /home/garner1/Work/dataset/bliss/RM151/outdata_ACGACCGC

bash bliss.sh RM152 human ../patterns/RM152_HBEC-Off-pooled-with-24h-before-IVT_GTCGTCGC 30 /home/garner1/Work/dataset/bliss/fastq
mkdir -p /home/garner1/Work/dataset/bliss/RM152/outdata_GTCGTCGC
mv /home/garner1/Work/dataset/bliss/RM152/outdata/* /home/garner1/Work/dataset/bliss/RM152/outdata_GTCGTCGC

bash bliss.sh RM152 human ../patterns/RM152_HBEC-Off-pooled-with-24h-before-IVT_ACGACCGC 30 /home/garner1/Work/dataset/bliss/fastq
mkdir -p /home/garner1/Work/dataset/bliss/RM152/outdata_ACGACCGC
mv /home/garner1/Work/dataset/bliss/RM152/outdata/* /home/garner1/Work/dataset/bliss/RM152/outdata_ACGACCGC

# bash bliss.sh RM153 human ../patterns/RM153_HBEC-ON-72h_TGATGCGC 30 /home/garner1/Work/dataset/bliss/fastq
# mkdir -p /home/garner1/Work/dataset/bliss/RM153/outdata_TGATGCGC
# mv /home/garner1/Work/dataset/bliss/RM153/outdata/* /home/garner1/Work/dataset/bliss/RM153/outdata_TGATGCGC

