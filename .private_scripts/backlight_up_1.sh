#!/bin/bash

# get parameter from /sys/class/backlight/gmux_backlight/brightness
BRIGHTNESS=$(cat /sys/class/backlight/gmux_backlight/brightness)
BRIGHTNESS=$[$BRIGHTNESS+2500]

# change the backlight
echo <yourPassWords> | sudo -S echo -n 2>/dev/random 1> /dev/random
echo $BRIGHTNESS | sudo tee /sys/class/backlight/gmux_backlight/brightness > /dev/null
