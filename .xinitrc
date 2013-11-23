#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
#### ROLLE ####

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

setxkbmap fi
xrandr "--output DVI-D-0 --primary" 
xinput --set-prop 8 'Device Accel Constant Deceleration' 4 &
xsetroot -cursor_name left_ptr
#xset +fp /usr/share/fonts/local
#xset fp rehash
#xbindkeys 

mpd & 
compton &
/home/rolle/script/tausta.sh &
### Desktop enviroments & Window managers ###

#exec gnome-session
#exec startkde
#exec startxfce4
exec awesome 

#########################
#                       #
#        bspwm          #
#                       #
#########################   

#sxhkd &
#[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
#mkfifo "$PANEL_FIFO"
#exec bspwm -s "$PANEL_FIFO" - p W
