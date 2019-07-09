#!/bin/usr/env bash

bash /home/garner1/Work/pipelines/BLISS/bin/bliss.sh TEST human /home/garner1/Work/pipelines/BLISS/patterns/TEST_DMSO_AGCCATCA 30 test/fastq
mkdir -p /home/garner1/Work/dataset/bliss/TEST/outdata_AGCCATCA
mv /home/garner1/Work/dataset/bliss/TEST/outdata/* /home/garner1/Work/dataset/bliss/TEST/outdata_AGCCATCA

