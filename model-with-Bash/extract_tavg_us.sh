#!/bin/sh

# For each file with name that starts with "20" and ens with ".csv"
cd raw-data
for csv_file in `ls 20*.csv`
do
    # Message that says file name $csv_file is extracted to file TAVG_US_$csv_file
    # Example: 2010.csv extracted to TAVG_US_2010.csv
     echo "$csv_file -> TAVG_US_$csv_file"
    # grep "TAVG" $csv_file: Extract lines in file with text "TAVG"
    # |: pipe
    # grep "^US": From those extract lines that begin with text "US"
    # > TAVG_US_$csv_file: Save xtracted lines to file TAVG_US_$csv_file
    grep "TAVG" $csv_file | grep "^US" > /Volumes/kencho/machine-learning/model-with-Bash/processed-data/"TAVG_US_"$csv_file
done