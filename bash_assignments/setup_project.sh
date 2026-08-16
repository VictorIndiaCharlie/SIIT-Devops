#!/bin/bash

# BULK CREATOR: Create 5 directories with notes.md files

echo "Starting project setup..."

# Use a for loop to create directories module_1 through module_5
for i in {1..5}; do
    # Create the directory
    mkdir -p "module_$i"
    
    # Create empty notes.md file inside the directory
    touch "module_$i/notes.md"
    
    # Print success message
    echo "✅ Created module_$i with notes.md"
done

echo "✨ Project setup complete! Created 5 modules."
