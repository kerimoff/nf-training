#!/usr/bin/env python
import gzip

reads = 0
bases = 0

with gzip.open('/Users/nurlan.kerimov/nf-train-kerimov/scripts/configuration/data/yeast/reads/ref1_1.fq.gz', 'rb') as read:
    for id in read:
        seq = next(read)
        reads += 1
        bases += len(seq.strip())
        next(read)
        next(read)

print("reads", reads)
print("bases", bases)
