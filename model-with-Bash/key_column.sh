#!/bin/sh

# For each file with name that starts with "TAVG_US_" and ens with ".csv"
cd processed-data
for csv_file in `ls TAVG_US_*.csv`
do
    echo "Exracting columns $csv_file"
    # cat $csv_file: 'cat' is to concatenate files - here used to show one year csv file
    # |: pipe
    # cut -d',' -f1,2,4: Cut columns 1,2,4 with , delimitor
    # > $csv_file.cut: Save to temporary file
    # > $csv_file.cut:
    cat $csv_file | cut -d',' -f1,2,4 > /Volumes/kencho/machine-learning/model-with-Bash/processed-data/$csv_file.cut
    # mv $csv_file.cut $csv_file: Rename temporary file to original file
    mv /Volumes/kencho/machine-learning/model-with-Bash/processed-data/$csv_file.cut /Volumes/kencho/machine-learning/model-with-Bash/processed-data/$csv_file
    # File is processed and saved back into the same
    # There are other ways to do this
    # Using intermediate file is the most reliable method.
done