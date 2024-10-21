#!/bin/sh

# Check if DP-1 is connected and active
if xrandr | grep -q "^DP-1 connected"; then
    # Disable eDP-1
    xrandr --output eDP-1 --off
else
    echo "DP-1 is not connected."
fi

xinput set-prop "TPPS/2 IBM TrackPoint" "Coordinate Transformation Matrix" 20 0 0 0 20 0 0 0 1
xinput set-prop "TPPS/2 IBM TrackPoint" "libinput Scrolling Pixel Distance" 10

