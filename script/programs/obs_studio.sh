#!/bin/bash

NAME="OBS Studio"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")


echo "$INSTALL_TIME: Installing $NAME"$'\n'
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt install obs-studio
echo $'\n'"$NAME Installed Successfully"$'\n'