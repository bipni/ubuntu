#!/bin/bash

NAME="Git"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")


echo "$INSTALL_TIME: Installing $NAME"$'\n'
sudo apt install git -y
git config --global user.name "bipni"
git config --global user.email bipumirja@gmail.com
echo $'\n'"$NAME Installed Successfully"$'\n'