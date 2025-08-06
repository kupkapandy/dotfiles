#!/bin/sh

setxkbmap pl
xset m 0 0
xinput set-prop 13 "libinput Accel Profile Enabled" 0, 1
xrandr --output DP-0 --mode 2560x1440 --rate 100 --primary --output HDMI2 --mode 1920x1080 --rate 75 --left-of DP-0
xrdb ~/.Xresources

killall feh
feh --bg-scale ~/.scripts/32302f.jpg

killall dwm-status.sh
killall dunst
~/.scripts/dwm-status.sh &
dunst &

exec dwm
