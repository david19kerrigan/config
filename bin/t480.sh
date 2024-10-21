#!/bin/bash

# Check if DP-1 is connected and active
if xrandr | grep -q "^DP-1 connected"; then
    # Disable eDP-1
    xrandr --output eDP-1 --off
else
    echo "DP-1 is not connected."
fi