#!/usr/bin/env bash

input=$1
output=$2

python ~/Work/pipelines/BLISS/python/umi_filtering.py "$input" "$output"
