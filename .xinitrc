#!/bin/bash

unset XCURSOR_THEME

xrandr --output DP-0 --mode 2560x1440 --rate 100 --primary --output $(xrandr --query | awk '/^HDMI[0-9]+ connected/{print $1; exit}') --mode 1920x1080 --rate 75 --left-of DP-0

xset s off
xset -dpms
xset s noblank
xrdb -merge ~/.Xresources

setxkbmap pl

killall dwm-status.sh
./.scripts/dwm-status.sh &

killall feh
feh --bg-scale ./.scripts/1d2021.jpg

xsetwacom set "UGTABLET 10 inch PenTablet stylus" Rotate half
xsetwacom set "UGTABLET 10 inch PenTablet stylus" MapToOutput 2560x1440+1920+0
xsetwacom set "UGTABLET 10 inch PenTablet stylus" PressureCurve 0 20 50 100

xinput set-prop 13 "libinput Accel Profile Enabled" 0 1 0
xinput set-prop 14 "libinput Accel Profile Enabled" 0 1 0
xinput set-prop 15 "libinput Accel Profile Enabled" 0 1 0

exec dwm
