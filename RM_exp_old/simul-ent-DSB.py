#!/usr/bin/python

import numpy as np
import math
from itertools import groupby
import sys
import random 

'''Parameters: cells number, average number of break per cell and its std, lenght of the genome'''
cn = 5000
gl = 1*10**9
mu = 80
sigma = 40

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
probs = repeats*1.0/sum(repeats)
ent = 0.0
for i in probs:
    ent -= i * math.log(i)

print ent*1.0/math.log(len(probs)), len(DSB)
