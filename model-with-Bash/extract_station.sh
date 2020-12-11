#!/bin/sh

cd raw-data
grep '^US' ghcnd-stations.txt | tr -s ' ' | cut -d' ' -f1,5 | sed "s/ /,/g" > /Volumes/kencho/machine-learning/model-with-Bash/processed-data/us-stations.txt


