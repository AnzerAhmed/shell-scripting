#!/bin/bash

# 03-validate-request.sh
# Validates deployment request arguments.

if [[ "$#" -ne 4 ]]; then
    echo "Error: 4 arguments are required." >&2
    exit 1
fi

if [[ "$2" != "dev" && "$2" != "test" && "$2" != "prod" ]]; then
    echo "Error: Invalid environment." >&2
    exit 1
fi

echo "Request is valid."
exit 0
