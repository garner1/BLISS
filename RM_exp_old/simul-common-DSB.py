#!/usr/bin/python

import numpy as np
import math
from itertools import groupby
import sys
import random 

'''Parameters: cells number, average number of break per cell and its std, lenght of the genome'''
cn = 5000
gl = 1*10**9
mu = 100
sigma = 20

'''Simulate first ensemble of cells'''
random.seed(sys.argv[1])
DSB = []
numbList = np.rint(sigma * np.random.randn(cn) + mu)
for cell in range(cn):
    numbDSB = numbList[cell]
    DSB.extend(np.random.randint(gl,size=abs(numbDSB)))

'''Evaluate the entropy'''
DSB.sort()
repeats = np.asarray([len(list(group)) for key, group in groupby(DSB)])

print len(repeats[repeats > 1])
