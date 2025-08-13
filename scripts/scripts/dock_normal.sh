#!/bin/bash

# Kill running dock
pkill -f nwg-dock-hyprland

# Relaunch in pinned mode
nwg-dock-hyprland -i 48 -w 10 -mb 8 -ml 8 -mr 8 -x -s style.css -lp start -c "nwg-drawer" &
