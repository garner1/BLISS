#!/bin/usr/env bash

bash bliss.sh BB171 human ../patterns/BB171_P716AS43_ACGACCGC 30 /media/bicroserver_2-seq/BICRO136/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/BB171/outdata_ACGACCGC
mv /home/garner1/Work/dataset/bliss/BB171/outdata/* /home/garner1/Work/dataset/bliss/BB171/outdata_ACGACCGC

bash bliss.sh BB172 human ../patterns/BB172_P817AS04_TGATGCGC 30 /media/bicroserver_2-seq/BICRO136/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/BB172/outdata_TGATGCGC
mv /home/garner1/Work/dataset/bliss/BB172/outdata/* /home/garner1/Work/dataset/bliss/BB172/outdata_TGATGCGC

bash bliss.sh BB173 human ../patterns/BB173_P918AS15_GTCGTCGC 30 /media/bicroserver_2-seq/BICRO136/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/BB173/outdata_GTCGTCGC
mv /home/garner1/Work/dataset/bliss/BB173/outdata/* /home/garner1/Work/dataset/bliss/BB173/outdata_GTCGTCGC

bash bliss.sh BB174 human ../patterns/BB174_P1018AS18_CATCAATC 30 /media/bicroserver_2-seq/BICRO136/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/BB174/outdata_CATCAATC
mv /home/garner1/Work/dataset/bliss/BB174/outdata/* /home/garner1/Work/dataset/bliss/BB174/outdata_CATCAATC

bash bliss.sh BB175 human ../patterns/BB175_OrgP716org43_ACGACCGC 30 /media/bicroserver_2-seq/BICRO136/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/BB175/outdata_ACGACCGC
mv /home/garner1/Work/dataset/bliss/BB175/outdata/* /home/garner1/Work/dataset/bliss/BB175/outdata_ACGACCGC

bash bliss.sh BB176 human ../patterns/BB176_OrgP817org04_TGATGCGC 30 /media/bicroserver_2-seq/BICRO136/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/BB176/outdata_TGATGCGC
mv /home/garner1/Work/dataset/bliss/BB176/outdata/* /home/garner1/Work/dataset/bliss/BB176/outdata_TGATGCGC

bash bliss.sh BB177 human ../patterns/BB177_OrgP1018org18_CATCAATC 30 /media/bicroserver_2-seq/BICRO136/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/BB177/outdata_CATCAATC
mv /home/garner1/Work/dataset/bliss/BB177/outdata/* /home/garner1/Work/dataset/bliss/BB177/outdata_CATCAATC

