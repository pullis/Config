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
xinput --set-prop 8 'Device Accel Constant Deceleration' 2 &
xsetroot -cursor_name left_ptr  
xset +fp /usr/share/fonts/local 
xset fp rehash                  
xset m 1 0

# Automaattisesti käynnistettävät ohjelmat
mpd &
dropboxd &
#compton --backend glx --paint-on-overlay --glx-no-stencil --vsync opengl-swc --unredir-if-possible --shadow-exclude "! name~=''" --config ~/.compton.conf -b &
#/home/rolle/scripts/taustaa.sh &
xbindkeys &
#/usr/bin/xscreensaver -no-splash &
#numlockx &
#sxhkd &  
#conky &
pidgin &

# Window Managers & Desktop Environments

#exec gnome-session
exec startkde
#exec startxfce4
#exec awesome 
#exec enlightenment_start
#exec i3 
#exec cinnamon-session
#exec lxqt-session
#exec startlxde
#exec mate-session
#exec startfluxbox
#exec openbox-session
#exec xmonad
#exec bspwm
#exec qtile


#[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
#mkfifo "$PANEL_FIFO"
#exec bspwm -c /home/rolle/.config/bspwm/bspwmrc -s "$PANEL_FIFO" -p W
