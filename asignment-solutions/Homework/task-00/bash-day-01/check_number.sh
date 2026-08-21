#!/bin/bash

read -r -p "Enter a number: " number

if [[ ! "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Invalid whole number."
    exit 1
fi

if (( number > 0 )); then
    echo "Positive"
elif (( number < 0 )); then
    echo "Negative"
else
    echo "Zero"
fi

exit 0
