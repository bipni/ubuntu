#!/bin/bash

NAME="VS Code"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")


echo "$INSTALL_TIME: Installing $NAME"$'\n'
sudo snap install code --classic
echo $'\n'"$NAME Installed Successfully"$'\n'