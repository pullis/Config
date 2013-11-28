#!/bin/bash
# Randomly change wallpaper in root window with feh

# Directories to search for images
# (errors from nonexistent directories will be ignored)
SRC="/media/sdc1/random/wallpaper/Wallpapers/"

while true; do
    XINERAMA_SCREEN=0 feh -qrz --bg-scale $(echo "${SRC}") 2> /dev/null
    sleep 3m
done
