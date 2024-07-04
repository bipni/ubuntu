#!/bin/bash

NAME="Redis Insight"
INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")

DIRECTORY=/tmp


echo "$INSTALL_TIME: Installing $NAME"$'\n'
wget -P $DIRECTORY https://s3.amazonaws.com/redisinsight.download/public/latest/Redis-Insight-linux-amd64.deb
sudo dpkg -i $DIRECTORY/Redis-Insight-linux-amd64.deb
echo $'\n'"$NAME Installed Successfully"$'\n'