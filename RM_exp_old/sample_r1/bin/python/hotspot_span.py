# -*- coding: utf-8 -*-
#!/usr/bin/python
"""
Created on Thu Sep 24 16:15:50 2015

@author: garner1
INPUT: a list of unique chr-locations 
OUTPUT: histogram of hotspots' span 
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from natsort import natsorted, ns
import module
reload(module)
from module import grouper
import sys
#==============================================================================
# Load data
#==============================================================================
#filename = sys.argv[1]

filename = '/home/garner1/Work/dataset/rm35/outdata/unique.chr.loc.txt'

data = pd.read_csv(filename, sep=' ',header=None)

if data.shape[1]==2: data.columns = ['CHR','LOC']
if data.shape[1]==4: data.columns = ['ID','CHR','LOC','UMI']
if data.shape[1]==5: data.columns = ['ID','CHR','LOC','STRAND','UMI']

#==============================================================================
# Prepare parameters
#==============================================================================
#chromosomes = pd.Series.unique(data['CHR'])
#chromosomes = natsorted(chromosomes, alg=ns.IGNORECASE) #natural sorting
chromosomes = ['chr1','chr2','chr3','chr4','chr5','chr6','chr7','chrX','chr8',
               'chr9','chr10','chr11','chr12','chr13','chr14','chr15',
               'chr16','chr17','chr18','chr20','chrY','chr19','chr22','chr21']

GW_span = []
start = 0
threshold = 2000

for chromosome in chromosomes:
    chrdata = data[data.CHR == chromosome]
    positions = chrdata['LOC']
    out = dict(enumerate(grouper(positions, threshold), 1))
   
    out_span = {k: max(v) - min(v) for k, v in out.items()}
    out_span = out_span.values()
    GW_span.extend(out_span)

# remove the zeros
# GW_span = [x for x in GW_span if x != 0]

#plt.figure()
#plt.hist(GW_span,bins=100,range=[0,50000])
#plt.title('GW histogram of the max span for hotspots at threshold = ' + str(threshold))
#plt.show()

outfile = '/home/garner1/Work/dataset/rm35/outdata/rm35.hotspot_diameter.threshold2000.txt'
with open(outfile, 'w') as f:
    for s in GW_span:
        f.write(str(s) + '\n')
