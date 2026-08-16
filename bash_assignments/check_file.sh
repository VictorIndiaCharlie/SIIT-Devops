#!/bin/bash
# check_file.sh - Check if a file exists, display size or create it

# Check if an argument was provided
if [ $# -eq 0 ]; then
    echo "Usage: ./check_file.sh <filename>"
    exit 1
fi

# Store the filename
filename=$1

# Check if the file exists
if [ -f "$filename" ]; then
    # File exists - get its size
    size=$(stat -c%s "$filename" 2>/dev/null || stat -f%z "$filename" 2>/dev/null)
    echo "File '$filename' found!"
    echo "File size: $size bytes"
else
    # File does not exist
    echo "Error: File not found"
    echo "Creating empty file: $filename"
    touch "$filename"
    echo "File '$filename' created successfully!"
fi