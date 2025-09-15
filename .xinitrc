#!/bin/sh

unset XCURSOR_THEME

xrandr --output DP-0 --mode 2560x1440 --rate 100 --primary --output HDMI2 --mode 1920x1080 --rate 75 --right-of DP-0
xset s off
xset -dpms
xset s noblank
xrdb -merge ~/.Xresources

killall dwm-status.sh
./.scripts/dwm-status.sh &

killall feh
feh --bg-scale ~/.scripts/a_group_of_white_spheres_with_rings.png

exec dwm
