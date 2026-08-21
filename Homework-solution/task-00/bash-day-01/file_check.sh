#!/bin/bash

read -r -p "Enter filename or path: " filename

if [[ -f "$filename" ]]; then
    echo "Regular file exists: $filename"
    exit 0
else
    echo "Not a regular file: $filename"
    exit 1
fi
