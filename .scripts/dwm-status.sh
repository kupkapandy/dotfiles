#!/bin/bash

trap "exit" TERM

getVolume() {
  if pactl get-sink-mute @DEFAULT_SINK@ | grep -q "yes"; then
    echo "Muted"
  else
    pactl get-sink-volume @DEFAULT_SINK@ | grep -o '[0-9]\+%' | head -1
  fi
}

while true; do
  xsetroot -name "$(getVolume) | $(date '+%m-%d %H:%M')"
  sleep 1
done
