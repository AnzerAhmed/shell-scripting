#!/bin/bash

# Display the script name using the first positional parameter.
echo "Script name: $0"
# Display the total number of supplied arguments.
echo "Arguments count: $#"

# Display all arguments while preserving spaces.
echo -n "All arguments:"
for argument in "$@"; do
    echo -n " $argument"
done
echo

# Start numbering the supplied arguments from 1.
item_number=1

# Process each argument separately using "$@".
for argument in "$@"; do
# Print each argument with its item number.
    echo "Item $item_number: $argument"
# Increase the item number for the next argument.
    item_number=$((item_number + 1))
done

exit 0
