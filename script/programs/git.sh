#!/bin/bash

NAME="Git"
PROGRAM="git"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")

if which $PROGRAM &> /dev/null; then
    echo "$NAME is already installed in this machine"$'\n'
else
    echo "$INSTALL_TIME: Installing $NAME"$'\n'
    sudo apt install git -y
    git config --global user.name "bipni"
    git config --global user.email bipumirja@gmail.com
    echo $'\n'"$NAME Installed Successfully"$'\n'
fi