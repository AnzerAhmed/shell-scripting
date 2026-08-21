#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Usage: ./greet.sh NAME" >&2
    exit 1
fi

echo "Hello, $1!"

exit 0
