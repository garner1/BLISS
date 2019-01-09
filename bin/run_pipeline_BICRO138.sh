#!/bin/usr/env bash

bash bliss.sh RM157 human ../patterns/RM157_NES2%_CATCACGC 30 /media/bicroserver_2-seq/BICRO138/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM157/outdata_CATCACGC
mv /home/garner1/Work/dataset/bliss/RM157/outdata/* /home/garner1/Work/dataset/bliss/RM157/outdata_CATCACGC

bash bliss.sh RM159 human ../patterns/RM159_NES2%_CATCACGC 30 /media/bicroserver_2-seq/BICRO138/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM159/outdata_CATCACGC
mv /home/garner1/Work/dataset/bliss/RM159/outdata/* /home/garner1/Work/dataset/bliss/RM159/outdata_CATCACGC

bash bliss.sh RM160 human ../patterns/RM160_NES4%_CATCACGC 30 /media/bicroserver_2-seq/BICRO138/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM160/outdata_CATCACGC
mv /home/garner1/Work/dataset/bliss/RM160/outdata/* /home/garner1/Work/dataset/bliss/RM160/outdata_CATCACGC

bash bliss.sh RM156 human ../patterns/RM156_6days4%_CATCAATC 30 /media/bicroserver_2-seq/BICRO138/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM156/outdata_CATCAATC
mv /home/garner1/Work/dataset/bliss/RM156/outdata/* /home/garner1/Work/dataset/bliss/RM156/outdata_CATCAATC

bash bliss.sh RM162 human ../patterns/RM162_6days4%_CATCAATC 30 /media/bicroserver_2-seq/BICRO138/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM162/outdata_CATCAATC
mv /home/garner1/Work/dataset/bliss/RM162/outdata/* /home/garner1/Work/dataset/bliss/RM162/outdata_CATCAATC

bash bliss.sh RM161 human ../patterns/RM161_6days2%_CATCAATC 30 /media/bicroserver_2-seq/BICRO138/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM161/outdata_CATCAATC
mv /home/garner1/Work/dataset/bliss/RM161/outdata/* /home/garner1/Work/dataset/bliss/RM161/outdata_CATCAATC

