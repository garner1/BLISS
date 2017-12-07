# -*- coding: utf-8 -*-
"""
Created on Mon Aug 17 15:05:17 2015

@author: garner1
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from natsort import natsorted, ns
import module
reload(module)
from module import grouper
import multiprocessing

#==============================================================================
# Load data
#==============================================================================
data = pd.read_csv('/home/garner1/Work/dataset/rm15/outdata/rm15.bed',sep=' ',header=None)

if data.shape[1]==4: data.columns = ['ID','CHR','LOC','UMI']
if data.shape[1]==5: data.columns = ['ID','CHR','LOC','STRAND','UMI']
    
#==============================================================================
# Prepare parameters
#==============================================================================
chromosomes = pd.Series.unique(data['CHR'])

chromosomes = natsorted(chromosomes, alg=ns.IGNORECASE) #natural sorting

gap_points = 1
gap_list = list(np.linspace(start=2000,stop=2000,num=gap_points,endpoint=True))

lista = []
for chromosome, gap in [(chromosome, gap) for chromosome in chromosomes for gap in gap_list]:
    lista.append([chromosome,gap])

#==============================================================================
# This function counts double strand breaks; 
# with input :
#    z[0]=chromosome
#    z[1]=gap value
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
#gap_chr_matrix = np.asarray(output).reshape((len(chromosomes),gap_points)).transpose()
#
#total = np.sum(gap_chr_matrix, axis=1)
#
#plt.plot(gap_list, total)
##plt.plot(gap_list, gap_chr_matrix11)
##plt.plot(gap_list, gap_chr_matrix12)
#plt.xscale('log')
#plt.yscale('log')
#plt.show()
#
#df = pd.DataFrame(gap_chr_matrix, index=gap_list, columns=chromosomes)

    
