#!/bin/bash

START_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")

echo "Just sit back and wait until all the processes is finished"$'\n'
sleep 3

echo "Started at $START_TIME"$'\n'

# Pre Installation Task
echo "Starting Pre-Installation Tasks"$'\n'
sleep 3

sudo apt update && sudo apt upgrade -y

echo $'\n'

# Regular
source ./programs/curl.sh
source ./programs/git.sh
source ./programs/vs_code.sh
source ./programs/sublime_text.sh
source ./programs/atom.sh
source ./programs/mongodb.sh
source ./programs/google_chrome.sh
source ./programs/postman.sh
source ./programs/insomnia.sh
source ./programs/node.sh
source ./programs/yarn.sh
source ./programs/gnome_tweaks.sh
source ./programs/vlc.sh

# Special
# source ./programs/nvidia.sh

# Post Installation Task
echo "Starting Post-Installation Tasks"$'\n'
sleep 3

source ./post-script/games.sh
sudo apt autoremove

END_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")
echo $'\n'"Finished at $END_TIME"$'\n'

START_TIMESTAMP=$(date -d "$START_TIME" +%s)
END_TIMESTAMP=$(date -d "$END_TIME" +%s)

TIMESTAMP_DIFFERENCE=$((END_TIMESTAMP - START_TIMESTAMP))

DIFFERENCE=$(date -u -d @${TIMESTAMP_DIFFERENCE} +"%H:%M:%S")

echo "Total time taken to complete the job: $DIFFERENCE"