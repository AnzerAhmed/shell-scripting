#!/bin/bash

# create_user_safe.sh
# Safely creates a Linux user
# Default mode is dry-run. Use --apply to create the user.

mkdir -p logs
LOG="logs/user-creation.log"

if [[ "$1" == "--help" ]]; then
    echo "Usage: ./create_user_safe.sh [--apply|--help]"
    exit 0
fi

if [[ "$1" != "" && "$1" != "--apply" ]]; then
    echo "Error: Invalid option" >&2
    exit 1
fi

read -r -p "Enter username: " username

if [[ -z "$username" ]]; then
    echo "Error: Username cannot be empty." >&2
    echo "Empty username" >> "$LOG"
    exit 1
fi

if [[ ! "$username" =~ ^[a-z][a-z0-9_-]*$ ]]; then
    echo "Error: Invalid username." >&2
    echo "Invalid username: $username" >> "$LOG"
    exit 1
fi

if getent passwd "$username" > /dev/null; then
    echo "Error: User '$username' already exists." >&2
    echo "Already exists: $username" >> "$LOG"
    exit 1
fi

if [[ "$1" != "--apply" ]]; then
    echo "Dry-run: sudo useradd -m \"$username\""
    echo "Dry-run: $username" >> "$LOG"
    exit 0
fi

if sudo useradd -m "$username"; then
    echo "New user added: $username"
    echo "Created: $username" >> "$LOG"
else
    echo "Error: Failed to create user." >&2
    echo "Failed: $username" >> "$LOG"
    exit 1
fi
