#!/bin/bash

NAME="GParted"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")


echo "$INSTALL_TIME: Installing $NAME"$'\n'
sudo apt install gparted
echo $'\n'"$NAME Installed Successfully"$'\n'