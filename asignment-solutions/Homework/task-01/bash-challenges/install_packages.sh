#!/bin/bash

packages=("nginx" "curl" "wget")

if [ "$EUID" -ne 0 ]; then
    echo "Error: run this script with sudo." >&2
    echo "Usage: sudo ./install_packages.sh" >&2
    exit 1
fi

if command -v apt-get >/dev/null 2>&1; then
    manager="apt-get"
    checker="dpkg"
elif command -v dnf >/dev/null 2>&1; then
    manager="dnf"
    checker="rpm"
elif command -v yum >/dev/null 2>&1; then
    manager="yum"
    checker="rpm"
else
    echo "Error: unsupported package manager." >&2
    exit 1
fi

for package in "${packages[@]}"; do
    if [ "$checker" = "dpkg" ]; then
        dpkg -s "$package" >/dev/null 2>&1
    else
        rpm -q "$package" >/dev/null 2>&1
    fi

    if [ "$?" -eq 0 ]; then
        echo "[INSTALLED] $package is already installed."
    else
        echo "[MISSING] Installing $package..."

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
