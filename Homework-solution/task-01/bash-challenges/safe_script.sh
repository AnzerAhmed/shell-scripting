#!/bin/bash

set -e

target_directory="/tmp/devops-test"

mkdir -p "$target_directory" || {
    echo "Error: failed to create directory." >&2
    exit 1
}

echo "Directory created or verified: $target_directory"

cd "$target_directory" || {
    echo "Error: failed to enter directory." >&2
    exit 1
}

echo "Entered directory: $target_directory"

touch test.txt || {
    echo "Error: failed to create file." >&2
    exit 1
}

echo "File created successfully"
echo "Workflow completed"

exit 0
