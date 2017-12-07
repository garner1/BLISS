# -*- coding: utf-8 -*-
"""
Created on Fri Sep 25 08:08:24 2015

@author: garner1
INPUT: a list of unique chr-locations 
OUTPUT: histogram of nearest neighbour distances 
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import module
reload(module)
import sys
import csv
#==============================================================================
# Load data
#==============================================================================
#filename = sys.argv[1]
filename = '/home/garner1/Work/dataset/rm35/outdata/unique.chr.loc.txt'

data = pd.read_csv(filename, sep=' ',header=None, index_col=False)
if data.shape[1]==2: data.columns = ['CHR','LOC']
#==============================================================================
# Prepare parameters
#==============================================================================
chromosomes = ['chr1','chr2','chr3','chr4','chr5','chr6','chr7','chrX','chr8',
               'chr9','chr10','chr11','chr12','chr13','chr14','chr15',
               'chr16','chr17','chr18','chr20','chrY','chr19','chr22','chr21']

distance_list = []

for chromosome in chromosomes:
    chrdata = data[data.CHR == chromosome]
    positions = chrdata['LOC']
    distance_list.extend(np.diff(positions))

# plt.figure()
# plt.hist(distance_list,bins=100,range=[1000,500000])
# plt.title('GW histogram of gaps')
# plt.show()

outfile = '/home/garner1/Work/dataset/rm35/outdata/rm35.cuts_gap.txt'
with open(outfile, 'w') as f:
    for s in distance_list:
        f.write(str(s) + '\n')



#plt.savefig('genome_sorted_'+sys.argv[2]+'.pdf', format='pdf')
