#!/bin/bash

NAME="Postman"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")


echo "$INSTALL_TIME: Installing $NAME"$'\n'
sudo snap install postman
echo $'\n'"$NAME Installed Successfully"$'\n'