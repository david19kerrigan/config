#!/bin/sh
xrandr --output eDP-1 --off --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-2-1 --off --output DP-2-2 --off --output DP-2-3 --primary --mode 1920x1080 --rate 60 --pos 0x0 --rotate normal
notify-send "$(xrandr --listactivemonitors)"
