#!/bin/bash

# get parameter from /sys/class/backlight/gmux_backlight/brightness
BRIGHTNESS=$(cat /sys/class/backlight/gmux_backlight/brightness)
BRIGHTNESS=$[$BRIGHTNESS+2500]

# change the backlight
echo $BRIGHTNESS > /sys/class/backlight/gmux_backlight/brightness
