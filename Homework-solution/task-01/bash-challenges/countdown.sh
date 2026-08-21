#!/bin/bash

# Read the starting number safely from the user.
read -r -p "Enter a starting number: " starting_number

# Validate that the input is a non-negative whole number.
if [[ -z "$starting_number" || ! "$starting_number" =~ ^[0-9]+$ ]]; then
# Send invalid-input errors to stderr and stop the script.
    echo "Error: enter a non-negative whole number." >&2
    exit 1
fi
# Continue counting down until the value reaches zero.

# Print the current countdown value.
while [ "$starting_number" -ge 0 ]; do
# Decrease the number by one after each loop.
    echo "$starting_number"
    starting_number=$((starting_number - 1))
done

echo "Done!"

exit 0
