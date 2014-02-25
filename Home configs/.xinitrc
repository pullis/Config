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
xrandr "--output DVI-D-0 --primary" 
xinput --set-prop 8 'Device Accel Constant Deceleration' 9 &
xsetroot -cursor_name left_ptr  
xset +fp /usr/share/fonts/local 
xset fp rehash                  

# Automaattisesti käynnistettävät ohjelmat
mpd &
dropboxd &
compton &
/home/rolle/script/tausta.sh &
/home/rolle/script/kello &
conky &
xbindkeys &
#sxhkd &

# Select what WM or DE to boot

#exec gnome-session
#exec startkde
#exec startxfce4
exec awesome 

#[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
#mkfifo "$PANEL_FIFO"
#exec bspwm -c /home/rolle/.config/bspwm/bspwmrc -s "$PANEL_FIFO" -p W
