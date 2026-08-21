#!/bin/bash
echo "======"
echo "TASK 4"
echo "======"

# Print informational messages to stdout
echo "Information: Stream demonstration started."
echo "Information: Checking directory."

# Store the first positional argument
directory="$1"

# Check if the directory exists
if [ -d "$directory" ]; then
    echo "Directory exists: $directory"
    echo "Contents of $directory:"
    ls -l "$directory"
    exit 0
else
    echo "Error: Directory '$directory' does not exist." >&2
    echo "Error: Please provide a valid directory path." >&2
    exit 1
fi
