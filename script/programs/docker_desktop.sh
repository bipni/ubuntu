#!/bin/bash

NAME="Docker Desktop"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")

DIRECTORY=/tmp


echo "$INSTALL_TIME: Installing $NAME"$'\n'
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt update
wget -P $DIRECTORY https://desktop.docker.com/linux/main/amd64/157355/docker-desktop-amd64.deb
sudo dpkg -i $DIRECTORY/docker-desktop-amd64.deb
echo $'\n'"$NAME Installed Successfully"$'\n'