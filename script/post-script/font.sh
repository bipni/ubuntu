#!/bin/bash

INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")

NAME="Font"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")


echo "$INSTALL_TIME: Installing $NAME"$'\n'
cd /home/$USER/Downloads/Repositories/ubuntu/fonts
mv *.ttf ~/.fonts/
fc-cache -fv
echo $'\n'"$NAME Installed Successfully"$'\n'