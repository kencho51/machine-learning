#!/bin/sh

cd processed-data
for csv_file in `ls TAVG_*.csv`
do
    echo Date formatting $csv_file
    # This inserts , after year
    # in Mac, -i edits files in-place
    sed -i '' 's/,..../&,/' $csv_file
    # This inserts , after month
    sed -i '' 's/,....,../&,/' $csv_file
done