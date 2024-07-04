#!/bin/bash

NAME="Anaconda"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")
FILE_NAME="Anaconda3-2023.09-0-Linux-x86_64.sh"


echo "$INSTALL_TIME: Installing $NAME"$'\n'
wget https://repo.anaconda.com/archive/$FILE_NAME
sudo apt install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
shasum -a 256 $FILE_NAME
bash $FILE_NAME
echo $'\n'"$NAME Installed Successfully"$'\n'