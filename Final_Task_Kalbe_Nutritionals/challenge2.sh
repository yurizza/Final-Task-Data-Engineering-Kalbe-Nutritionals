#!/bin/bash

# Question 1 variables
path="/home/cici/kalbe/hdfs/data/data1"
name_of_directory="data1"
dir=${path}/${name_of_directory}

# New variables for copying files
filename_excel="daily_market_price.xlsx"
source_dir="/home/cici/kalbe/local/data/market"

# Check if directory exists
if [ -d "${dir}" ]; then
    echo "Direktori ${name_of_directory} Sudah Ada!"
    
    # Copy file from source directory to target directory
    cp "${source_dir}/${filename_excel}" "${dir}"
    
    # Check if the copy was successful
    if [ $? -eq 0 ]; then
    	echo "File Moved Successfully" >> "${dir}/move_log.txt"
    else
	echo "Failed to move the file" >> "${dir}/move_log.txt"
    fi
    
else
    echo "Direktori ${name_of_directory} Tidak Ada!"
    # Membuat direktori di dalam jalur
    mkdir -p "${dir}"
fi
