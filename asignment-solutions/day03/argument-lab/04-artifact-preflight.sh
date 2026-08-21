#!/bin/bash

# 04-artifact-preflight.sh
# Checks whether an artifact exists and is not empty.

if [[ "$#" -ne 1 ]]; then
    echo "Error: Provide one artifact path." >&2
    exit 1
fi

if [[ ! -f "$1" ]]; then
    echo "Error: Artifact not found." >&2
    exit 1
fi

if [[ ! -s "$1" ]]; then
    echo "Error: Artifact is empty." >&2
    exit 1
fi

echo "Artifact is ready."
exit 0
