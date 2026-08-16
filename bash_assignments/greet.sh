#!/bin/bash
# greet.sh - Greeting script with date

# Check if an argument was provided
if [ $# -eq 0 ]; then
    echo "Usage: ./greet.sh <name>"
    exit 1
fi

# Store the first argument as the name
name=$1

# Print the greeting with current date
echo "Hello $name! Today is $(date)"
