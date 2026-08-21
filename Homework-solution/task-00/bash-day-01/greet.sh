#!/bin/bash

# Ask the user for their name.
read -r -p "Enter your name: " name
# Ask the user for their favorite tool.
read -r -p "Enter your favorite tool: " tool

# Display a personalized greeting using both variables.
echo "Hello $name, your favorite tool is $tool."
