#!/bin/bash
nwg-drawer &
sleep 0.3
hyprctl layers > /tmp/layers.log
