#!/bin/bash

NAME="Screenshot"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")


echo "$INSTALL_TIME: Installing $NAME"$'\n'
sudo apt install gnome-screenshot
echo $'\n'"$NAME Installed Successfully"$'\n'