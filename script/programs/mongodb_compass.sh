#!/bin/bash

NAME="MongoDB Compass"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")

DIRECTORY=/tmp


echo "$INSTALL_TIME: Installing $NAME"$'\n'
wget -P $DIRECTORY https://downloads.mongodb.com/compass/mongodb-compass_1.43.4_amd64.deb
sudo dpkg -i $DIRECTORY/mongodb-compass_1.43.4_amd64.deb
echo $'\n'"$NAME Installed Successfully"$'\n'