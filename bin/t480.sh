#!/bin/sh

if xrandr | grep -q "^DP-1 connected"; then
    xrandr --output eDP-1 --off
fi

xinput set-prop "TPPS/2 IBM TrackPoint" "Coordinate Transformation Matrix" 20 0 0 0 20 0 0 0 1
xinput set-prop "TPPS/2 IBM TrackPoint" "libinput Scrolling Pixel Distance" 10
brightnessctl set 100%
setxkbmap -layout us -option ctrl:swapcaps
