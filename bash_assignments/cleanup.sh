#!/bin/bash
count=$(find "$1" -name "*.tmp" -type f -delete -print | wc -l)
echo "Deleted $count .tmp files"
