# -*- coding: utf-8 -*-
"""
Created on Thu Aug 20 09:01:41 2015

@author: garner1
INPUT: a list of unique ID-chr-locations-umi
OUTPUT: a list of hotspots
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from natsort import natsorted, ns
import module
reload(module)
from module import grouper
import multiprocessing
import sys
#==============================================================================
# Load data
#==============================================================================
filename = sys.argv[1]

data = pd.read_csv(filename, sep=' ', header=None)

if data.shape[1]==4: data.columns = ['ID','CHR','LOC','UMI']
if data.shape[1]==5: data.columns = ['ID','CHR','LOC','STRAND','UMI']

#data.columns = ['ID','CHR','LOC','STRAND','UMI']
#data.columns = ['ID','CHR','LOC','UMI']
#==============================================================================
# Prepare parameters
#==============================================================================
chromosomes = pd.Series.unique(data['CHR'])

chromosomes = natsorted(chromosomes, alg=ns.IGNORECASE) #natural sorting

gap_points = 1
gap_list = list(np.linspace(start=2000,stop=2000,num=gap_points,endpoint=True))

# gap_list = list(np.logspace(start=0,stop=7,num=gap_points,endpoint=True,base=10.0))
#list(10**n for n in range(gap_points))

lista = []
for chromosome, gap in [(chromosome, gap) for chromosome in chromosomes for gap in gap_list]:
    lista.append([chromosome,gap])

#==============================================================================
# This function counts double strand breaks; 
# with input :
#    z[1]=chromosome
#    z[2]=gap value
#==============================================================================
def dsb(z):
    chrdata = data[data.CHR == z[0]]
    positions = chrdata['LOC']
    out = dict(enumerate(grouper(positions, z[1]), 1))
    return len(out)

#==============================================================================
# Parallelize the computation of different gaps for each chromosome
#==============================================================================
ncores = multiprocessing.cpu_count() # number of cores
pool = multiprocessing.Pool(processes=ncores) # initializes parallel engine

output = pool.map(dsb, lista)	# parallel function map, output and lista have the same order

pool.close()	# close the parallel engine

#==============================================================================
# Display the result and create a dataframe
#==============================================================================
gap_chr_matrix = np.asarray(output).reshape((len(chromosomes),gap_points)).transpose()

total = np.sum(gap_chr_matrix, axis=1)

print ["The number of hotspot is ", total]
# ==============================================================================
# plt.plot(gap_list, total,'o')
# #plt.plot(gap_list, gap_chr_matrix11)
# # plt.xscale('log')
# # plt.yscale('log')
# plt.title(sys.argv[2])
# #plt.show()
# plt.savefig(sys.argv[2]+'.pdf', format='pdf')

# # df = pd.DataFrame(gap_chr_matrix, index=gap_list, columns=chromosomes)
# # df.index.name = 'gap'
# # df.to_csv(sys.argv[2]+'.csv')
# ==============================================================================
