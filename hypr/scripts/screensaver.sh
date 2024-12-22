#!/bin/bash

while true; do
  # Check for user activity. If there is no activity for 5 minutes (300 seconds), run pipes.sh
  if [ -z "$(xprintidle 2>/dev/null)" ]; then
    # Run pipes.sh in kitty
    kitty --hold -e pipes.sh
  fi
  sleep 300
done
