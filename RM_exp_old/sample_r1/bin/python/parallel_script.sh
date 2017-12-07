#!/usr/bin/env bash

parallel python local_field.py ::: seq_?
