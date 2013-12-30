#!/bin/bash
# Randomly change wallpaper in root window with feh

# Directories to search for images
# (errors from nonexistent directories will be ignored)
SRC="/media/3tb/random/wallpaper/Wallpapers/"

while true; do
  KUVA=`find ${SRC} -type f | shuf -n1`
  KUVA2=`find ${SRC} -type f | shuf -n1`
  KNIMI=`basename ${KUVA}`
  KNIMI2=`basename ${KUVA2}`
  echo "Desktop 1: $KNIMI"
  echo "Desktop 2: $KNIMI2"
  feh -qr --bg-scale $SRC/$KNIMI $SRC/$KNIMI2 2> ~/script/VIRHE 
  #XINERAMA_SCREEN=1 feh -qr --bg-scale $SRC/$KNIMI2 2> /dev/null
  xrdb -merge ~/wp/XDEFAULTS/${KNIMI}.Xres
  source ~/wp/COLORS/${KNIMI}.colors
  ln -sf ${SRC}${KNIMI} ~/.currentBG
  sleep 3m
done

