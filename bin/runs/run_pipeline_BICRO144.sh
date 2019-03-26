#!/bin/usr/env bash

bash /home/garner1/Work/pipelines/BLISS/bin/bliss.sh RM154 human /home/garner1/Work/pipelines/BLISS/patterns/RM154_NES2%p23_CATCACGC 30 /media/bicroserver_2-seq/BICRO144/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM154/outdata_CATCACGC
mv /home/garner1/Work/dataset/bliss/RM154/outdata/* /home/garner1/Work/dataset/bliss/RM154/outdata_CATCACGC

bash /home/garner1/Work/pipelines/BLISS/bin/bliss.sh RM180 human /home/garner1/Work/pipelines/BLISS/patterns/RM180_NES4%p25_CATCACGC 30 /media/bicroserver_2-seq/BICRO144/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM180/outdata_CATCACGC
mv /home/garner1/Work/dataset/bliss/RM180/outdata/* /home/garner1/Work/dataset/bliss/RM180/outdata_CATCACGC

bash /home/garner1/Work/pipelines/BLISS/bin/bliss.sh RM182 human /home/garner1/Work/pipelines/BLISS/patterns/RM182_Prim4%p29_CATCAATC 30 /media/bicroserver_2-seq/BICRO144/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM182/outdata_CATCAATC
mv /home/garner1/Work/dataset/bliss/RM182/outdata/* /home/garner1/Work/dataset/bliss/RM182/outdata_CATCAATC

bash /home/garner1/Work/pipelines/BLISS/bin/bliss.sh RM183 human /home/garner1/Work/pipelines/BLISS/patterns/RM183_Neuron2%p23_CATCATCC 30 /media/bicroserver_2-seq/BICRO144/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM183/outdata_CATCATCC
mv /home/garner1/Work/dataset/bliss/RM183/outdata/* /home/garner1/Work/dataset/bliss/RM183/outdata_CATCATCC

bash /home/garner1/Work/pipelines/BLISS/bin/bliss.sh RM185 human /home/garner1/Work/pipelines/BLISS/patterns/RM185_Neuron4%p27solution_CATCATCC 30 /media/bicroserver_2-seq/BICRO144/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM185/outdata_CATCATCC
mv /home/garner1/Work/dataset/bliss/RM185/outdata/* /home/garner1/Work/dataset/bliss/RM185/outdata_CATCATCC

bash /home/garner1/Work/pipelines/BLISS/bin/bliss.sh RM186 human /home/garner1/Work/pipelines/BLISS/patterns/RM186_Neuron4%p30_CATCATCC 30 /media/bicroserver_2-seq/BICRO144/FASTQ
mkdir -p /home/garner1/Work/dataset/bliss/RM186/outdata_CATCATCC
mv /home/garner1/Work/dataset/bliss/RM186/outdata/* /home/garner1/Work/dataset/bliss/RM186/outdata_CATCATCC

