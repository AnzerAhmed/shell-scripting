#!/bin/bash

# Read a number from the user safely.
read -r -p "Enter a number: " number

# Validate that the input is a whole number, including negative values.
if [[ ! "$number" =~ ^-?[0-9]+$ ]]; then
# Show an error and stop when the input is invalid.
    echo "Error: Invalid whole number."
    exit 1
fi
# Check whether the number is greater than zero.

if (( number > 0 )); then
# Check whether the number is less than zero.
    echo "Positive"
elif (( number < 0 )); then
    echo "Negative"
# If neither condition is true, the number must be zero.
else
    echo "Zero"
fi

exit 0
