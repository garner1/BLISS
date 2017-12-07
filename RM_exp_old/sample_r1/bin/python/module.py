# -*- coding: utf-8 -*-
"""
Created on Mon Aug 17 14:46:04 2015

@author: garner1
"""

def grouper(iterable,gap):
    prev = None
    group = []
    for item in iterable:
        if not prev or item - prev <= gap:
            group.append(item)
        else:
            yield group
            group = [item]
        prev = item
    if group:
        yield group

