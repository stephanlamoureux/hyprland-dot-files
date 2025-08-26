#!/bin/bash

# List your apps with icons
FAVES="firefoxdeveloperedition 🦊\ncode 🖥️\nkitty 🐱\nkitty -e yazi 📂\nspotify 🎵"

# Feed it into wofi
echo -e "$FAVES" | wofi --show dmenu -c /home/stephan/.config/wofi/config2/config2 -s /home/stephan/.config/themes/catppuccin-waybar/style.css -i -p "Favorites:" | xargs -r -I {} sh -c "{} &"
