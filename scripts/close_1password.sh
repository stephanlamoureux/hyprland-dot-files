#!/bin/bash

# Give some time for 1Password to start
sleep 4

# Close the 1Password window
xdotool search --onlyvisible --class "1Password" windowclose
