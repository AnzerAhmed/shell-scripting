#!/bin/bash
# Title:greeting.sh
#Authour Name: Anzer Ahmed
#Date:26-7-2026
<<comment
purpose:Displaying greeting message
USaGE Example: Bash greeting.sh
comment

echo "NIT: Hello Doston"
echo "Welcome to Bash Scripting Day 2"
echo
echo "======="
echo "TASK 2"
echo "======="
# Variables
institute="Nexus Institute of Technology"
course="Bash Scripting"
instructor="Sir Khalid Khan"
student_name="Anzer Ahmed"

# Print values with labels
echo "Institute: $institute"
echo "Course: $course"
echo "Instructor: $instructor"
echo "Student Name: $student_name"

echo

# Difference between literal text and variable expansion
echo "Literal text example:"
echo "Name is student_name"

echo

echo "Variable expansion example:"
echo "Name is $student_name"

echo

# Using braces for variable expansion
echo "Course using braces: ${course}"
echo
echo "========"
echo "TASK 3"
echo "========"
echo

# Prompt the user for their name
echo -n "Enter your name: "
read -r student_name

# Validate input
if [ -z "$student_name" ]; then
    echo "Error: Name cannot be empty." >&2
    exit 1
fi

# Print the accepted name
echo "You entered: $student_name"
echo "Welcome, $student_name!"
