#!/bin/bash
# Randomly change wallpaper with feh and change terminal colors to match it
# Takes colors from second screen


# Directories to search for images
# (errors go to ~/script/VIRHE)
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
  NUMTERMINALS=`ls -l /dev/pts | wc -l`
  NUM=$((${NUMTERMINALS}-3))
  #echo "Open terminals: $NUM"
  for cur in {0..15}
  do
	TMP="COLOR$cur"
	for konsoli in /dev/pts/* 
	do
		KON="$konsoli"
  		p2="/dev/pts/ptmx"
		if [ "$p2" != "${KON}" ]
	       	then
			echo -ne "\033]4;${cur};${!TMP}\007" > ${konsoli}
		fi
	done
  done
  ln -sf ${SRC}${KNIMI} ~/.currentBG
  sleep 3m
done

