#!/bin/bash

INSTALL_TIME=$(date +"%Y-%m-%d %I:%M:%S %p")

echo "Uninstalling Games"$'\n'

GAME_EXIST=false

if which aisleriot &> /dev/null; then
    GAME_EXIST=true
    sudo apt remove aisleriot
fi

if which gnome-sudoku &> /dev/null; then
    GAME_EXIST=true
    sudo apt remove gnome-sudoku
fi

if which gnome-mahjongg &> /dev/null; then
    GAME_EXIST=true
    sudo apt remove gnome-mahjongg
fi

if which ace-of-penguins &> /dev/null; then
    GAME_EXIST=true
    sudo apt remove ace-of-penguins
fi

if which gnomine &> /dev/null; then
    GAME_EXIST=true
    sudo apt remove gnomine
fi

if which gbrainy &> /dev/null; then
    GAME_EXIST=true
    sudo apt remove gbrainy
fi

if which gnome-mines &> /dev/null; then
    GAME_EXIST=true
    sudo apt remove gnome-mines
fi

if [ "$GAME_EXIST" = true ]; then
    echo "All Games Uninstalled"$'\n'
else
    echo "No Games Found to Uninstall"$'\n'
fi