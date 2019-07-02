#!/usr/bin/env bash

input=$1
output=$2

python3 ~/Dropbox/pipelines/BLISS/python/umi_filtering.py "$input" "$output"
