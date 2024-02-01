#!/bin/bash

NAME="NVIDIA"
PROGRAM="nvidia-smi"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")

if which $PROGRAM &> /dev/null; then
    echo "$NAME is already installed in this machine"$'\n'
else
    echo "$INSTALL_TIME: Installing $NAME"$'\n'
    sudo apt install nvidia-driver-535 -y
    sudo prime-select nvidia
    echo $'\n'"$NAME Installed Successfully"$'\n'
fi