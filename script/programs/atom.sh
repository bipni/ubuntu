#!/bin/bash

NAME="Atom"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")


echo "$INSTALL_TIME: Installing $NAME"$'\n'
sudo snap install atom --classic
echo $'\n'"$NAME Installed Successfully"$'\n'