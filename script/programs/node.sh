#!/bin/bash

NAME="Node JS"
PROGRAM="node"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")

if which $PROGRAM &> /dev/null; then
    echo "$NAME is already installed in this machine"$'\n'
else
    echo "$INSTALL_TIME: Installing $NAME"$'\n'
    curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - && sudo apt install nodejs -y
    echo $'\n'"$NAME Installed Successfully"$'\n'
fi