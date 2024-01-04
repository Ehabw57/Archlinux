#!/bin/bash
xrandr --newmode "1920x1080_57"  160.00 1920 2040 2240 2560  1080 1083 1088 1118 -hsync +vsync
xrandr --addmode VGA1 1920x1080_57
xrandr --output VGA1 --mode 1920x1080_57
