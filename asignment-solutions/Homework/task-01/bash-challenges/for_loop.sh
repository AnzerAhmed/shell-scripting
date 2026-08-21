#!/bin/bash

fruits=("apple" "banana" "mango" "orange" "red cherry")

item_number=1

for fruit in "${fruits[@]}"; do
    echo "Item $item_number: $fruit"
    item_number=$((item_number + 1))
done

exit 0
