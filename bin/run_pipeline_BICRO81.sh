#!/bin/usr/env bash

bash bliss.sh RM134 human ../patterns/RM134_IMR90-rep1_TGATGATC 30 /media/bicroserver_2-seq/BICRO81/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM134/outdata_TGATGATC
mv /home/garner1/Work/dataset/bliss/RM134/outdata/* /home/garner1/Work/dataset/bliss/RM134/outdata_TGATGATC

bash bliss.sh RM135 human ../patterns/RM135_IMR90-rep2_TGATGATC 30 /media/bicroserver_2-seq/BICRO81/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM135/outdata_TGATGATC
mv /home/garner1/Work/dataset/bliss/RM135/outdata/* /home/garner1/Work/dataset/bliss/RM135/outdata_TGATGATC

bash bliss.sh RM136 human ../patterns/RM136_Caov3-rep1_TGATGATC 30 /media/bicroserver_2-seq/BICRO81/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM136/outdata_TGATGATC
mv /home/garner1/Work/dataset/bliss/RM136/outdata/* /home/garner1/Work/dataset/bliss/RM136/outdata_TGATGATC

bash bliss.sh RM137 human ../patterns/RM137_Caov3-rep2_TGATGATC 30 /media/bicroserver_2-seq/BICRO81/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM137/outdata_TGATGATC
mv /home/garner1/Work/dataset/bliss/RM137/outdata/* /home/garner1/Work/dataset/bliss/RM137/outdata_TGATGATC

