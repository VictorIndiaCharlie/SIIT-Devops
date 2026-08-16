#!/bin/bash

# DIRECTORY CLEANER: Delete all .tmp files in a given directory

# Check if directory argument is provided
if [ $# -eq 0 ]; then
    echo "❌ Error: Please provide a directory path as an argument."
    echo "Usage: ./cleanup.sh /path/to/directory"
    exit 1
fi

TARGET_DIR="$1"

# Check if the directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo "❌ Error: Directory '$TARGET_DIR' does not exist."
    exit 1
fi

echo "🔍 Scanning for .tmp files in: $TARGET_DIR"

# Find and count .tmp files
TMP_FILES=$(find "$TARGET_DIR" -type f -name "*.tmp" 2>/dev/null)
COUNT=$(echo "$TMP_FILES" | grep -c "." 2>/dev/null)

if [ -z "$TMP_FILES" ] || [ "$COUNT" -eq 0 ]; then
    echo "ℹ️ No .tmp files found in '$TARGET_DIR'."
    exit 0
fi

# Delete the files
echo "$TMP_FILES" | while read -r file; do
    if [ -f "$file" ]; then
        rm "$file"
        echo "🗑️ Deleted: $file"
    fi
done

echo "✅ Cleanup complete! Deleted $COUNT .tmp file(s)."