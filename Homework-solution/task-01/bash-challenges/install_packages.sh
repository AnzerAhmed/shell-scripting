#!/bin/bash

# Define the packages that need to be checked or installed.
packages=("nginx" "curl" "wget")

# Require root privileges before installing packages.
if [ "$EUID" -ne 0 ]; then
# Show an error and usage message when sudo is missing.
    echo "Error: run this script with sudo." >&2
    echo "Usage: sudo ./install_packages.sh" >&2
    exit 1
fi

# Detect the Debian/Ubuntu package manager.
if command -v apt-get >/dev/null 2>&1; then
    manager="apt-get"
    checker="dpkg"
# Detect the RHEL-family DNF package manager.
elif command -v dnf >/dev/null 2>&1; then
    manager="dnf"
    checker="rpm"
# Detect the RHEL-family YUM package manager.
elif command -v yum >/dev/null 2>&1; then
    manager="yum"
    checker="rpm"
# Stop if no supported package manager is available.
else
    echo "Error: unsupported package manager." >&2
    exit 1
fi
# Check every required package one by one.

# Use the correct package database to check installation status.
for package in "${packages[@]}"; do
    if [ "$checker" = "dpkg" ]; then
        dpkg -s "$package" >/dev/null 2>&1
    else
        rpm -q "$package" >/dev/null 2>&1
    fi

# Install the package when it is missing.
    if [ "$?" -eq 0 ]; then
        echo "[INSTALLED] $package is already installed."
# Report successful installation.
    else
        echo "[MISSING] Installing $package..."
# Report installation failure to stderr and stop.

        if "$manager" install -y "$package"; then
            echo "[SUCCESS] $package was installed."
        else
            echo "[ERROR] $package installation failed." >&2
            exit 1
        fi
    fi
done

echo "All packages are installed successfully."

exit 0
