#!/bin/bash

NAME="NVIDIA"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")


echo "$INSTALL_TIME: Installing $NAME"$'\n'
sudo apt install nvidia-driver-535 -y
sudo prime-select nvidia
echo $'\n'"$NAME Installed Successfully"$'\n'