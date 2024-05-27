#!/bin/bash

# listen touchpad with "libinput debug-events" tools  
libinput debug-events | grep --line-buffered 'GESTURE_HOLD' | while read line
do
    if echo "$line" | grep -q 'GESTURE_HOLD_BEGIN.*4$'; then
        echo "$line"
        xdotool keydown Super key v keyup Super # Pop-up opens when 4 fingers holding on the touchpad, if you remove your fingers "Escape" key working, then pop-up closes.
    elif echo "$line" | grep -q 'GESTURE_HOLD_END.*4$'; then
        echo "$line"
        xdotool key Escape # Opening notification pop-up. You can change according to your request
    fi
done

# download this file and execute this commands:
# 1- sudo chmod +x 4-finger-listener.sh
# 2- ./4-finger-listener.sh

# If you want to execute this script everytime, you can add this script in the startup application. 
# I have written startup application-scripts subject in the README.md file.
