#!/bin/bash

INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")

echo "Uninstalling Games"$'\n'

sudo apt remove aisleriot
sudo apt remove gnome-sudoku
sudo apt remove gnome-mahjongg
sudo apt remove ace-of-penguins
sudo apt remove gbrainy
sudo apt remove gnome-mines