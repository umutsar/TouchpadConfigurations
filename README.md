# TouchpadConfigurations
Touchpad settings in linux systems. Synaptics, libinput-gestures tools and shell scripts was used.

## Make any script a startup script.
nano ~/.config/autostart/example.desktop  # create a .desktop file and copy to below lines.

[Desktop Entry]  
Type=Application  
Name=My Application  
Exec=/home/YourUsername/scripts/script.sh  # should be your script path (Give permission to your file with chmod +x)
