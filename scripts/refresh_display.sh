#!/bin/bash

# Check if DP-5 is connected
if hyprctl monitors | grep -q "DP-5"; then
	# DP-5 is connected, disable eDP-1 and enable DP-5
	hyprctl keyword monitor "eDP-1, disable"
	hyprctl keyword monitor "DP-5, 2560x1440@60,0x0,1"
else
	# DP-5 is disconnected, enable eDP-1 and disable DP-5
	hyprctl keyword monitor "eDP-1, 1920x1200@60,0x0,1"
	hyprctl keyword monitor "DP-5, disable"
fi
