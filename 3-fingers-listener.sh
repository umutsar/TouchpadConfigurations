#!/bin/bash

# listen touchpad with "libinput debug-events" tools  
libinput debug-events | grep --line-buffered 'GESTURE_HOLD' | while read line
do
    if echo "$line" | grep -q 'GESTURE_HOLD_BEGIN.*3$'; then
        echo "$line"
        xdotool key XF86AudioMute
    elif echo "$line" | grep -q 'GESTURE_HOLD_END.*3$'; then
        echo "$line"
        xdotool key XF86AudioMute
    fi
done


# download this file and execute this commands:
# 1- sudo chmod +x 3-finger-listener.sh
# 2- ./3-finger-listener.sh

# If you want to execute this script everytime, you can add this script in the startup application. 
# I have written startup application-scripts subject in the README.md file.
