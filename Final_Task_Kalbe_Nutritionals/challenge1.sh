#!/bin/bash

# Variables
path="/home/cici/hdfs/data/data1"
name_of_directory="data1"

# Full path to the directory
dir="${path}/${name_of_directory}"

# Check if directory exists
if [ -d "${dir}" ]; then
    echo "There is [Directory Name] Directory Exists!"
else
    echo "[Directory Name] Directory Not Exists!"
    # Membuat direktori di dalam jalur
    mkdir -p "${dir}"
fi

