#!/bin/bash

# get parameter from /sys/devices/platform/applesmc.768/leds/smc::kbd_backlight
BRIGHTNESS=$(cat /sys/devices/platform/applesmc.768/leds/smc::kbd_backlight/brightness)
BRIGHTNESS=$[$BRIGHTNESS+32]

# change the backlight
echo <yourPassWord>| sudo -S echo -n 2>/dev/random 1> /dev/random
echo $BRIGHTNESS | sudo tee /sys/devices/platform/applesmc.768/leds/smc::kbd_backlight/brightness > /dev/null
