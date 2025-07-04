#!/bin/bash

# Step 1: Replace content inside all files (case-insensitive)
find . -type f -exec sed -i 's/Meta/Meta/gI' {} +

# Step 2: Rename files and folders (case-insensitive)
find . -depth -name "*Meta*" | while read f; do
    newname=$(echo "$f" | sed 's/Meta/Meta/gI')
    mv "$f" "$newname"
done
