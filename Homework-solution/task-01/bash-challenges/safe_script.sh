#!/bin/bash

# Enable exit-on-error for unhandled command failures.
set -e

# Define the directory used by this test workflow.
target_directory="/tmp/devops-test"

# Create the directory and handle creation failures.
mkdir -p "$target_directory" || {
    echo "Error: failed to create directory." >&2
    exit 1
}

# Enter the target directory and handle navigation failures.
echo "Directory created or verified: $target_directory"

cd "$target_directory" || {
    echo "Error: failed to enter directory." >&2
    exit 1
# Create a test file inside the target directory.
}

echo "Entered directory: $target_directory"

touch test.txt || {
    echo "Error: failed to create file." >&2
# Report successful completion of the complete workflow.
    exit 1
}

echo "File created successfully"
echo "Workflow completed"

exit 0
