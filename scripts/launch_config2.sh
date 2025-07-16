#!/bin/bash

# Set XDG_DATA_HOME to the custom directory
export XDG_DATA_HOME="$HOME/.config/applications"

# Set XDG_DATA_DIRS to only include the custom directory
export XDG_DATA_DIRS="$HOME/.config/applications"

# Launch wofi with the custom configuration and theme
wofi --show drun -c ~/.config/wofi/config2/config2 -s ~/.config/wofi/themes/catppuccin-waybar/style.css
