#!/bin/usr/env bash

bash bliss.sh RM135 human ../patterns/RM135_IMR90-rep2_TGATGATC 30 /media/bicroserver_2-seq/BICRO85/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM135/outdata_TGATGATC
mv /home/garner1/Work/dataset/bliss/RM135/outdata/* /home/garner1/Work/dataset/bliss/RM135/outdata_TGATGATC

bash bliss.sh RM138 human ../patterns/RM138_IMR90-rep3_GTCGTATC 30 /media/bicroserver_2-seq/BICRO85/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM138/outdata_GTCGTATC
mv /home/garner1/Work/dataset/bliss/RM138/outdata/* /home/garner1/Work/dataset/bliss/RM138/outdata_GTCGTATC

bash bliss.sh RM137 human ../patterns/RM137_Caov3-rep2_TGATGATC 30 /media/bicroserver_2-seq/BICRO85/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM137/outdata_TGATGATC
mv /home/garner1/Work/dataset/bliss/RM137/outdata/* /home/garner1/Work/dataset/bliss/RM137/outdata_TGATGATC

bash bliss.sh RM136 human ../patterns/RM136_Caov3-rep1_TGATGATC 30 /media/bicroserver_2-seq/BICRO85/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM136/outdata_TGATGATC
mv /home/garner1/Work/dataset/bliss/RM136/outdata/* /home/garner1/Work/dataset/bliss/RM136/outdata_TGATGATC

bash bliss.sh RM139 human ../patterns/RM139_HelaS3-rep1_CATCAATC 30 /media/bicroserver_2-seq/BICRO85/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM139/outdata_CATCAATC
mv /home/garner1/Work/dataset/bliss/RM139/outdata/* /home/garner1/Work/dataset/bliss/RM139/outdata_CATCAATC

bash bliss.sh RM140 human ../patterns/RM140_HelaS3-rep2_CATCAATC 30 /media/bicroserver_2-seq/BICRO85/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM140/outdata_CATCAATC
mv /home/garner1/Work/dataset/bliss/RM140/outdata/* /home/garner1/Work/dataset/bliss/RM140/outdata_CATCAATC

