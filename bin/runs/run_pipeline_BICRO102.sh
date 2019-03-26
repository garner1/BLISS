#!/bin/usr/env bash

bash bliss.sh RM145 human ../patterns/RM145_A549-1-300ng-bulk-rep1_GTCGTATC 30 /media/bicroserver_2-seq/BICRO102/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM145/outdata_GTCGTATC
mv /home/garner1/Work/dataset/bliss/RM145/outdata/* /home/garner1/Work/dataset/bliss/RM145/outdata_GTCGTATC

bash bliss.sh RM146 human ../patterns/RM146_A549-2-300ng-bulk-rep1_GTCGTATC 30 /media/bicroserver_2-seq/BICRO102/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM146/outdata_GTCGTATC
mv /home/garner1/Work/dataset/bliss/RM146/outdata/* /home/garner1/Work/dataset/bliss/RM146/outdata_GTCGTATC

bash bliss.sh RM147 human ../patterns/RM147_IMR90-G1-205ng-bulk-rep1_GTCGTATC 30 /media/bicroserver_2-seq/BICRO102/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM147/outdata_GTCGTATC
mv /home/garner1/Work/dataset/bliss/RM147/outdata/* /home/garner1/Work/dataset/bliss/RM147/outdata_GTCGTATC

bash bliss.sh RM148 human ../patterns/RM148_IMR90-S-205ng-bulk-rep1_GTCGTATC 30 /media/bicroserver_2-seq/BICRO102/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM148/outdata_GTCGTATC
mv /home/garner1/Work/dataset/bliss/RM148/outdata/* /home/garner1/Work/dataset/bliss/RM148/outdata_GTCGTATC

bash bliss.sh RM149 human ../patterns/RM149_IMR90-G2M-72.54ng-bulk-rep1_GTCGTATC 30 /media/bicroserver_2-seq/BICRO102/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM149/outdata_GTCGTATC
mv /home/garner1/Work/dataset/bliss/RM149/outdata/* /home/garner1/Work/dataset/bliss/RM149/outdata_GTCGTATC

