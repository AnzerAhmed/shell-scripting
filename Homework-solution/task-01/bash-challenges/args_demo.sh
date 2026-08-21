#!/bin/bash

echo "Script name: $0"
echo "Arguments count: $#"

echo -n "All arguments:"
for argument in "$@"; do
    echo -n " $argument"
done
echo

item_number=1

for argument in "$@"; do
    echo "Item $item_number: $argument"
    item_number=$((item_number + 1))
done

exit 0
