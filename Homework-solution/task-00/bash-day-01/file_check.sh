#!/bin/bash

# Ask the user for a filename or path.
read -r -p "Enter filename or path: " filename

# Check whether the path exists and is a regular file.
if [[ -f "$filename" ]]; then
# Report that the regular file was found.
    echo "Regular file exists: $filename"
    exit 0
else
# Report when the path is not a regular file.
    echo "Not a regular file: $filename"
    exit 1
fi
