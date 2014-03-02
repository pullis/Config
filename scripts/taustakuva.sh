#!/bin/bash
# Randomly change wallpaper in root window with feh

# Directories to search for images
# (errors from nonexistent directories will be ignored)
SRC="/media/3tb/random/wallpaper/Wallpapers/"

while true; do
    feh -qrz --bg-scale $(echo "${SRC}") 2> /dev/null
    sleep 1m
done
