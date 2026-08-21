#!/bin/bash

# Store five fruits, including one fruit name containing a space.
fruits=("apple" "banana" "mango" "orange" "red cherry")

# Start numbering the fruits from 1.
item_number=1

# Loop through each fruit while preserving spaces.
for fruit in "${fruits[@]}"; do
# Display the fruit number and its name.
    echo "Item $item_number: $fruit"
# Increase the item number for the next fruit.
    item_number=$((item_number + 1))
done

exit 0
