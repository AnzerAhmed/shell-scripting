#!/bin/bash

# Store the name of the systemd service to check.
service_name="nginx"

# Ask whether the user wants to check the service status.
read -r -p "Do you want to check the status of nginx? (y/n): " answer

case "$answer" in
# Display the current systemd status without opening a pager.
    y|Y)
        systemctl status --no-pager "$service_name"
# Check whether the service is currently active.

# Report that the service is running.
        if systemctl is-active --quiet "$service_name"; then
            echo "$service_name is active."
# Report that the service is not currently active.
        else
            echo "$service_name is inactive."
        fi
        ;;
    n|N)
# Skip the service check when the user chooses no.
        echo "Skipped."
        ;;
    *)
# Reject any response other than yes or no.
        echo "Error: Invalid response."
        exit 1
        ;;
esac
