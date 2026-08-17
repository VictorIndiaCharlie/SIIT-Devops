#!/bin/bash

if [ -f "$1" ]
then
    echo "File $1 found!"
    ls -lh "$1"
else
    echo "Error: File not found"
    touch "$1"
fi
