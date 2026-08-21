#!/bin/bash

# Store the student name in a variable.
NAME="Anzer Ahmed"
# Store the user's role in a variable.
ROLE="DevOps Engineer"

# Display both variables using safe double-quoted expansion.
echo "Hello, I am $NAME and I am a $ROLE."

# Demonstrate variable expansion inside double quotes.
echo "Hello, $NAME"
# Single quotes prevent Bash from expanding the variable.
echo 'Hello, $NAME'
