#!/bin/bash

NAME="Tweaks"
PROGRAM="gnome-tweaks"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")

if which $PROGRAM &> /dev/null; then
    echo "$NAME is already installed in this machine"$'\n'
else
    echo "$INSTALL_TIME: Installing $NAME"$'\n'
    sudo add-apt-repository universe
    sudo apt update
    sudo apt install gnome-tweak-tool -y
    echo $'\n'"$NAME Installed Successfully"$'\n'
fi