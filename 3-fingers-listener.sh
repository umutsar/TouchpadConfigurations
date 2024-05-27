#!/bin/bash

# listen touchpad with "libinput debug-events" tools
libinput debug-events | grep --line-buffered 'GESTURE_HOLD_BEGIN.*4$' | while read line
do
    echo "$line"
    xdotool keydown Super key v keyup Super
done
libinput debug-events | grep --line-buffered 'GESTURE_HOLD_END.*4$' | while read line
do
    xdotool key Escape
done



# download this file and execute this commands:
# 1- sudo chmod +x 3-finger-listener.sh
# 2- ./3-finger-listener.sh

# If you want to execute this script everytime, you can add this script in the startup application. 
# I have written startup application-scripts subject in the README.md file.
