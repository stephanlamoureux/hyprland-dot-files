#!/bin/bash

# Enable idle inhibitor
hyprctl keyword misc idle_inhibit true

# Sleep for a few seconds to allow the inhibitor to take effect
sleep 2

# Send a signal to Waybar to update its state
pkill -SIGRTMIN+1 waybar
