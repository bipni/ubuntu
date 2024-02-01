#!/bin/bash

NAME="Google Chrome"
PROGRAM="google-chrome"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")

DIRECTORY=/tmp

if which $PROGRAM &> /dev/null; then
    echo "$NAME is already installed in this machine"$'\n'
else
    echo "$INSTALL_TIME: Installing $NAME"$'\n'
    wget -P $DIRECTORY https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i $DIRECTORY/google-chrome-stable_current_amd64.deb
    echo $'\n'"$NAME Installed Successfully"$'\n'
fi