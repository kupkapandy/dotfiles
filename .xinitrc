#!/bin/sh

setxkbmap pl
xset m 0 0
xinput set-prop 13 "libinput Accel Profile Enabled" 0, 1
xrandr --output DP-0 --mode 2560x1440 --rate 100 --primary --output HDMI-1-2 --left-of DP-0

killall dwm-status.sh
killall dunst
~/.scripts/dwm-status.sh &
dunst &

exec dwm
