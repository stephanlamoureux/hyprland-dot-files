#!/bin/bash

# Loop to ensure all WebCord processes are terminated
while pgrep -f "/usr/lib/webcord" > /dev/null; do
    pkill -f "/usr/lib/webcord"
    sleep 1  # Small delay to allow processes to terminate
done

echo "WebCord has been terminated."
