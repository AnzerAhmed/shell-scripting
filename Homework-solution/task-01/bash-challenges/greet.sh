#!/bin/bash

# Check whether the user supplied a name argument.
if [ "$#" -eq 0 ]; then
# Show the correct usage when the argument is missing.
    echo "Usage: ./greet.sh NAME" >&2
    exit 1
fi

# Print a greeting using the first argument.
echo "Hello, $1!"

exit 0
