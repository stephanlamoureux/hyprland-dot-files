#!/bin/bash

# Kill current running dock
pkill -f nwg-dock-hyprland

# Relaunch with autohide enabled
nwg-dock-hyprland -i 48 -w 10 -mb 8 -ml 8 -mr 8 -d -hd 50 -l overlay -s style.css -lp start -c "nwg-drawer" &
