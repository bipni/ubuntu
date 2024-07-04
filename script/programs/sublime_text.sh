#!/bin/bash

NAME="Sublime Text"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")


echo "$INSTALL_TIME: Installing $NAME"$'\n'
sudo snap install sublime-text --classic
echo $'\n'"$NAME Installed Successfully"$'\n'