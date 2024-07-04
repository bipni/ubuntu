#!/bin/bash

NAME="ZSH Terminal"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")


echo "$INSTALL_TIME: Installing $NAME"$'\n'
git clone https://github.com/pixegami/terminal-profile.git
sudo apt update
sudo apt upgrade
cd terminal-profile
./install_powerline.sh
./install_terminal.sh
./install_profile.sh
echo $'\n'"$NAME Installed Successfully"$'\n'