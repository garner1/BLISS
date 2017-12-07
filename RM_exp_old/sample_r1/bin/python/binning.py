# -*- coding: utf-8 -*-
"""
Created on Wed Sep  2 12:56:41 2015

@author: garner1
INPUT: a list of unique ID-chr-locations-umi
OUTPUT: a list of hostpots' mean values
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
filename = sys.argv[1]
#filename = '/home/garner1/Work/dataset/rm35/outdata/rm35.bed'
data = pd.read_csv(filename, sep=' ',header=None)

if data.shape[1]==4: data.columns = ['ID','CHR','LOC','UMI']
if data.shape[1]==5: data.columns = ['ID','CHR','LOC','STRAND','UMI']

chr_size={"chr1":249250621,"chr2":243199373,"chr3":198022430,"chr4":191154276,"chr5":180915260,"chr6":171115067,"chr7":159138663,
"chr8":146364022,"chr9":141213431,"chr10":135534747,"chr11":135006516,"chr12":133851895,"chr13":115169878,
"chr14":107349540,"chr15":102531392,"chr16":90354753,"chr17":81195210,"chr18":78077248,
"chr19":59128983,"chr20":63025520,"chr21":48129895,"chr22":51304566,"chrX":155270560,"chrY":59373566}
#==============================================================================
# Prepare parameters
#==============================================================================
#chromosomes = pd.Series.unique(data['CHR'])
#chromosomes = natsorted(chromosomes, alg=ns.IGNORECASE) #natural sorting
chromosomes = ['chr1','chr2','chr3','chr4','chr5','chr6','chr7','chrX','chr8','chr9','chr10','chr11','chr12','chr13','chr14','chr15',
               'chr16','chr17','chr18','chr20','chrY','chr19','chr22','chr21']

ind = 0
genome_hist = []
genome_edges = []
start = 0
for chromosome in chromosomes:
    chrdata = data[data.CHR == chromosome]
    positions = chrdata['LOC']
    out = dict(enumerate(grouper(positions, 2000), 1))
   
    out_mean = {k: np.mean(v) + start for k, v in out.items()}
    out_mean = out_mean.values()    
    hist, edges = np.histogram(out_mean, bins=10)
    genome_hist = np.hstack((genome_hist,hist))
   
    ind = ind + 1
    start = start + chr_size[chromosome]

plt.figure()
plt.stem(genome_hist)
plt.title('genome sorted by chromosomes length for '+sys.argv[2])
plt.xlabel('genome')
plt.ylabel('DSB counts')
#plt.show()
plt.savefig('genome_sorted_'+sys.argv[2]+'.pdf', format='pdf')

