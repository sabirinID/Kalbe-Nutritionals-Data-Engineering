#!/bin/bash

# Variables
path="/hdfs/data/data1"
name_of_directory="data1"
filename_excel="daily_market_price.xlsx"
source_dir="/local/data/market"
target_dir="${path}/${name_of_directory}"

# Check if directory exists
if [ -d "${target_dir}" ]; then
    echo "There is ${name_of_directory} Directory Exists!"
    
    # Copy a file from source directory into target directory
    cp "${source_dir}/${filename_excel}" "${target_dir}"
    
    # Create a log file inside the same path
    if [ $? -eq 0 ]; then
        echo "File Moved Successfully" > "${target_dir}/log.txt"
    else
        echo "File Moving Failed" > "${target_dir}/log.txt"
    fi
else
    echo "${name_of_directory} Directory Not Exists!"
    # Create a directory inside the path
    mkdir "${target_dir}"
fi