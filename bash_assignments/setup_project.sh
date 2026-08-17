#!/bin/bash
# Create 5 modules with notes.md
for i in {1..5}; do
    mkdir -p module_$i
    touch module_$i/notes.md
    echo "Created module_$i"
done
