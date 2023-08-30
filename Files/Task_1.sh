#!/bin/bash

# Variables
path="/hdfs/data/data1"
name_of_directory="data1"

# Full path to the directory
full_path="${path}/${name_of_directory}"

# Check if directory exists
if [ -d "${full_path}" ]; then
    echo "There is ${name_of_directory} Directory Exists!"
else
    echo "${name_of_directory} Directory Not Exists!"
    # Create a directory inside the path
    mkdir -p "${full_path}"
fi

# Create a crontab syntax to run the script at 07:00 AM daily
echo "0 7 * * * /bin/bash /path/to/Task_1.sh" | crontab -