#!/bin/bash

service_name="nginx"

read -r -p "Do you want to check the status of nginx? (y/n): " answer

case "$answer" in
    y|Y)
        systemctl status --no-pager "$service_name"

        if systemctl is-active --quiet "$service_name"; then
            echo "$service_name is active."
        else
            echo "$service_name is inactive."
        fi
        ;;
    n|N)
        echo "Skipped."
        ;;
    *)
        echo "Error: Invalid response."
        exit 1
        ;;
esac
