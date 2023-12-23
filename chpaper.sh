#!/bin/sh
WALLPAPER=$(find ~/Wallpaper | shuf -n 1)
feh --bg-fill $WALLPAPER
wal -i $WALLPAPER > /dev/null
