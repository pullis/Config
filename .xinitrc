#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

setxkbmap fi
#xrandr "--output DVI-D-0 --primary" 
xrandr --output DVI-I-1 --mode 1280x1024 --pos 1920x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DVI-D-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
xsetroot -cursor_name left_ptr  
xset +fp /usr/share/fonts/local 
xset fp rehash                  
xrdb ~/.Xdefaults # For awesome wm


xbindkeys &
/home/$USER/mouse_acceleration &

exec startkde
#exec awesome 
