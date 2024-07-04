#!/bin/bash

NAME="Google Chrome"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")

DIRECTORY=/tmp


echo "$INSTALL_TIME: Installing $NAME"$'\n'
wget -P $DIRECTORY https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i $DIRECTORY/google-chrome-stable_current_amd64.deb
xdg-settings set default-web-browser google-chrome.desktop
echo $'\n'"$NAME Installed Successfully"$'\n'