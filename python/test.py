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
import sys
from sklearn.cluster import DBSCAN
from sklearn import metrics
#==============================================================================
# Load data
#==============================================================================
filename = sys.argv[1]
diameter = int(sys.argv[2])
min_samples = int(sys.argv[3])

data = pd.read_csv(filename, sep='\t',header=None)
data.columns = ['CHR','START','END','STRAND','UMI','PCR']

chr_size={"chr1":249250621,"chr2":243199373,"chr3":198022430,"chr4":191154276,"chr5":180915260,"chr6":171115067,"chr7":159138663,
"chr8":146364022,"chr9":141213431,"chr10":135534747,"chr11":135006516,"chr12":133851895,"chr13":115169878,
"chr14":107349540,"chr15":102531392,"chr16":90354753,"chr17":81195210,"chr18":78077248,
"chr19":59128983,"chr20":63025520,"chr21":48129895,"chr22":51304566,"chrX":155270560,"chrY":59373566}

chromosomes = ['chr1','chr2','chr3','chr4','chr5','chr6','chr7','chr8',
               'chr9','chr10','chr11','chr12','chr13','chr14','chr15',
               'chr16','chr17','chr18','chr19','chr20','chr21','chr22','chrX','chrY']
total_clusters = 0
for chromosome in chromosomes[:1]:
    chrdata = data[data.CHR == chromosome]
    positions = chrdata['START']
    X = np.reshape(positions.values,(len(positions.values),1))

    # Compute DBSCAN
    db = DBSCAN(eps=diameter, min_samples=min_samples).fit(X)
    core_samples_mask = np.zeros_like(db.labels_, dtype=bool)
    core_samples_mask[db.core_sample_indices_] = True
    labels = db.labels_
    print range(0,len(np.unique(labels)))
    for ind in list(np.unique(labels)):
        print X[np.where(labels == ind )]

