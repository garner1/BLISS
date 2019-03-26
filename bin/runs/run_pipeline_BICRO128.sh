#!/bin/usr/env bash

bash bliss.sh BB146 human ../patterns/BB146_MCF10A-AsiSI-DMSO1_CATCATCC 30 /media/bicroserver_2-seq/BICRO128/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/BB146/outdata_CATCATCC
mv /home/garner1/Work/dataset/bliss/BB146/outdata/* /home/garner1/Work/dataset/bliss/BB146/outdata_CATCATCC

bash bliss.sh BB147 human ../patterns/BB147_MCF10A-AsiSI-DMSO2_CATCATCC 30 /media/bicroserver_2-seq/BICRO128/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/BB147/outdata_CATCATCC
mv /home/garner1/Work/dataset/bliss/BB147/outdata/* /home/garner1/Work/dataset/bliss/BB147/outdata_CATCATCC

bash bliss.sh BB148 human ../patterns/BB148_MCF10A-AsiSI-ETO1_ACGACATC 30 /media/bicroserver_2-seq/BICRO128/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/BB148/outdata_ACGACATC
mv /home/garner1/Work/dataset/bliss/BB148/outdata/* /home/garner1/Work/dataset/bliss/BB148/outdata_ACGACATC

bash bliss.sh BB149 human ../patterns/BB149_MCF10A-AsiSI-ETO2_ACGACATC 30 /media/bicroserver_2-seq/BICRO128/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/BB149/outdata_ACGACATC
mv /home/garner1/Work/dataset/bliss/BB149/outdata/* /home/garner1/Work/dataset/bliss/BB149/outdata_ACGACATC

bash bliss.sh BB150 human ../patterns/BB150_MCF10A-AsiSI-DRB1_TGATGCGC 30 /media/bicroserver_2-seq/BICRO128/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/BB150/outdata_TGATGCGC
mv /home/garner1/Work/dataset/bliss/BB150/outdata/* /home/garner1/Work/dataset/bliss/BB150/outdata_TGATGCGC

bash bliss.sh BB151 human ../patterns/BB151_MCF10A-AsiSI-DRB2_TGATGCGC 30 /media/bicroserver_2-seq/BICRO128/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/BB151/outdata_TGATGCGC
mv /home/garner1/Work/dataset/bliss/BB151/outdata/* /home/garner1/Work/dataset/bliss/BB151/outdata_TGATGCGC

bash bliss.sh BB152 human ../patterns/BB152_MCF10A-AsiSI-FLAVO1_CATCACGC 30 /media/bicroserver_2-seq/BICRO128/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/BB152/outdata_CATCACGC
mv /home/garner1/Work/dataset/bliss/BB152/outdata/* /home/garner1/Work/dataset/bliss/BB152/outdata_CATCACGC

bash bliss.sh BB153 human ../patterns/BB153_MCF10A-AsiSI-FLAVO2_CATCACGC 30 /media/bicroserver_2-seq/BICRO128/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/BB153/outdata_CATCACGC
mv /home/garner1/Work/dataset/bliss/BB153/outdata/* /home/garner1/Work/dataset/bliss/BB153/outdata_CATCACGC

