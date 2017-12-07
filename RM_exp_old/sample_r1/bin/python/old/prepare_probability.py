# -*- coding: utf-8 -*-
"""
Created on Tue Sep  1 14:11:27 2015

@author: garner1
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
#'/home/garner1/Work/dataset/rm15/outdata/rm15.bed'
data = pd.read_csv(filename, sep=' ',header=None)

if data.shape[1]==4: data.columns = ['ID','CHR','LOC','UMI']
if data.shape[1]==5: data.columns = ['ID','CHR','LOC','STRAND','UMI']

chr_size={"chr1":249250621,"chr2":243199373,"chr3":198022430,"chr4":191154276,"chr5":180915260,"chr6":171115067,"chr7":159138663,
"chrX":155270560,"chr8":146364022,"chr9":141213431,"chr10":135534747,"chr11":135006516,"chr12":133851895,"chr13":115169878,
"chr14":107349540,"chr15":102531392,"chr16":90354753,"chr17":81195210,"chr18":78077248,"chr20":63025520,"chrY":59373566,
"chr19":59128983,"chr22":51304566,"chr21":48129895}
#==============================================================================
# Prepare parameters
#==============================================================================
chromosomes = pd.Series.unique(data['CHR'])

chromosomes = natsorted(chromosomes, alg=ns.IGNORECASE) #natural sorting

ind = 0
mean_list = []
count_list = []
start = 0
for chromosome in chromosomes:
    chrdata = data[data.CHR == chromosome]
    positions = chrdata['LOC']
    out = dict(enumerate(grouper(positions, 2000), 1))
    out_len = {k: len(v) for k, v in out.items()}
    
    count_list.append(out_len.values())
    
    out_mean = {k: np.mean(v) + start for k, v in out.items()}
    mean_list.append(out_mean.values())
    
    ind =+ 1
    start =+ chr_size[chromosome]
    
mean_list = np.asarray([val for sublist in mean_list for val in sublist])
count_list = [val for sublist in count_list for val in sublist] 
norma = np.linalg.norm(count_list,ord=1)
count_list = np.true_divide(count_list,norma)

#plt.figure()
#plt.plot(mean_list,count_list,'.')
#
#plt.figure()

# ==============================================================================
plt.hist(mean_list, 100)
plt.title(sys.argv[2])
plt.xlabel('genome')
plt.ylabel('DSB counts')
plt.savefig(sys.argv[2]+'.pdf', format='pdf')
np.savetxt(sys.argv[2],mean_list)
# ==============================================================================
