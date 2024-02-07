#!/bin/sh
# Nice script to open/focus apps by command line
# Made by zerobors

My_app="$1"
my_app="$(echo "$1" | tr '[:upper:]' '[:lower:]')"

# Check if the specified My_app is running
if pgrep -x "$(echo $my_app)" || pgrep -x "$(echo $My_app)" > /dev/null; then
	i3-msg "[class=^$My_app] focus" > /dev/null
	i3-msg "[class=^$my_app] focus" > /dev/null
	notify-send -t 3000 "Switched to $1"
else
    notify-send -t 3000 "Opend $1"
    $my_app > /dev/null
fi

