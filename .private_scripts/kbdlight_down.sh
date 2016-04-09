#!/bin/bash

# get parameter from /sys/devices/platform/applesmc.768/leds/smc::kbd_backlight
BRIGHTNESS=$(cat /sys/devices/platform/applesmc.768/leds/smc::kbd_backlight/brightness)
BRIGHTNESS=$[$BRIGHTNESS-32]

# change the backlight
echo $BRIGHTNESS > /sys/devices/platform/applesmc.768/leds/smc::kbd_backlight/brightness
