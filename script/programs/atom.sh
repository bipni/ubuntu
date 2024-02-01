#!/bin/bash

NAME="Atom"
PROGRAM="atom"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")

if which $PROGRAM &> /dev/null; then
    echo "$NAME is already installed in this machine"$'\n'
else
    echo "$INSTALL_TIME: Installing $NAME"$'\n'
    sudo snap install atom --classic
    echo $'\n'"$NAME Installed Successfully"$'\n'
fi