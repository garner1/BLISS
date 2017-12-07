#!/usr/bin/env python

#This file receives as input a sequence of x, and evaluates the list of [x,u(x)]

import sys
import pickle
import numpy as np
import scipy.io

def U(x,n,u):
    interval = np.arange(x,x+n,step=1)
    return u[interval,0].mean()

u = scipy.io.mmread('u_vector.mtx').tocsr()

infile = open('n_file', "r")
n = pickle.load(infile)

name = sys.argv[1]

infile = open(str(name), "r")
seq = pickle.load(infile)

x_uloc = []
for x in seq:
    x_uloc.append([x,U(x,n,u)])

name = 'out_' + str(name) 
outfile = open(name, "w")
pickle.dump(x_uloc, outfile)
outfile.close()
