#!/bin/sh

unset XCURSOR_THEME

xrandr --output DP-0 --mode 2560x1440 --rate 100 --primary --output HDMI1 --mode 1920x1080 --rate 75 --left-of DP-0
xset s off
xset -dpms
xset s noblank
xrdb -merge ~/.Xresources

killall dwm-status.sh
./.scripts/dwm-status.sh &

killall feh
feh --bg-scale ~/.scripts/32302f.jpg


exec dwm
