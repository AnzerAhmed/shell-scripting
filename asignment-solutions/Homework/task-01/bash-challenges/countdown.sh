#!/bin/bash

read -r -p "Enter a starting number: " starting_number

if [[ -z "$starting_number" || ! "$starting_number" =~ ^[0-9]+$ ]]; then
    echo "Error: enter a non-negative whole number." >&2
    exit 1
fi

while [ "$starting_number" -ge 0 ]; do
    echo "$starting_number"
    starting_number=$((starting_number - 1))
done

echo "Done!"

exit 0
