#!/bin/sh
# This is called hashbang. It identifies the executor used to run this file.
# In this case, the script is executed by shell itself.
# If not specified, a program to execute the script must be specified.
# With hashbang: ./download.sh;  Without hashbang: sh ./download.sh;

FROM_YEAR=2010
TO_YEAR=2019

year=$FROM_YEAR
# For all years one by one starting from FROM_YEAR=2010 upto TO_YEAR=2019
while [ $year -le $TO_YEAR ]
do
    # go to data directory
    cd /Volumes/kencho/machine-learning/model-with-Bash/raw-data
    # show the year being downloaded now
    echo $year
    # Download
    wget https://www1.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/${year}.csv.gz
    # Unzip
    gzip -d ${year}.csv.gz
    # Move to next year by incrementing
    year=$(($year+1))
done