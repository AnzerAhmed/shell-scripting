#!/bin/bash
echo "========"
echo "TASK 6"
echo "========"
# Check if an argument was provided
if [ -z "$1" ]; then
    echo "Error: Please provide a directory name." >&2
    exit 1
fi

directory="$1"

# Create the directory if it does not exist,
# then enter it only if creation succeeds.
mkdir -p "$directory" && cd "$directory" \
|| {
    echo "Error: Failed to create or enter the directory." >&2
    exit 1
}

echo "Successfully entered directory: $(pwd)"
exit 0
