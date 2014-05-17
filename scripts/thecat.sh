#!/bin/bash

f=3 b=4
for j in f b; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done
bld=$'\e[1m'
rst=$'\e[0m'
inv=$'\e[7m'

gtkrc="$HOME/.gtkrc-2.0"
GtkTheme=$( grep "gtk-theme-name" "$gtkrc" | cut -d\" -f2 )
GtkIcon=$( grep "gtk-icon-theme-name" "$gtkrc" | cut -d\" -f2 )
GtkFont=$( grep "gtk-font-name" "$gtkrc" | cut -d\" -f2 )
Shell=$( echo $SHELL )
Terminal=$( echo $TERM )
Editor=$( echo $EDITOR )

# Settings from ~/.Xdefaults
xdef="~/.Xdefaults"
TermFont="Fixed 14"

# Time and date
time=$( date "+%H.%M")
date=$( date "+%a %d %b" )

# OS
OS=$(uname -r -o -m)

# Other
UPT=`uptime | awk -F'( |,)' '{print $2}' | awk -F ":" '{print $1}'`
uptime=$(uptime | sed 's/.*up \([^,]*\), .*/\1/')
uptime2=$(uptime | sed -nr 's/.*\s+([[:digit:]]{1,2}):[[:digit:]]{2},.*/\1/p')
size=$(df | grep '^/dev/[hs]d' | awk '{s+=$2} END {printf("%.0f\n", s/1048576)}')
use=$(df | grep '^/dev/[hs]d' | awk -M '{s+=$3} END {printf("%.0f\n", s/1048576)}')
gb=$(echo "G")
pac=$(pacman -Qe | wc -l)
pacman=$(pacman -Q | wc -l)
dist=$(cat /etc/issue | sed 's/ /n/')
COUNT=$(cat /proc/cpuinfo | grep 'model name' | sed -e 's/.*: //' | wc -l)
cpu=$(cat /proc/cpuinfo | grep -m 1 "model name" | cut -d\: -f2) 
gpu=$(nvidia-settings -g | grep renderer | cut -d\: -f2)
speed=$(egrep -m 1 'GHz|MHz' /proc/cpuinfo | cut -d \: -f2)
wm=$(wmctrl -m | grep "Name" | cut -d\: -f2)

cat << EOF   
$bld                                           
$f7                                                  
$f7                    .c0N.   .'c.                  $H the$f1 cat
$f7         'Okdl:'  ;OMMMMKOKNMMW:;o0l  .'.          
$f7         ;MMMMMMWWMMMMMMMMMMMMMMMMMXKWMMK         $H $f4$time$NC - $f7$date
$f7         'MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMK         $f6 $USER $f7@ $f1$HOSTNAME
$f7          NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO          
$f7          dMMMMMMMMMMMMMMMMMMMMMMMMMMMMM:          GTK Theme »$f4 $GtkTheme$NC
$f7          'MMMMMMMMMMMMMMMMMMMMMMMMMMMMM.          GTK Icons »$f4 $GtkIcon$NC
$f7          'MMMMMMMMMMMMMMMMMMMMMMMMMMMMM;          GTK Font  »$f4 $GtkFont$NC
$f7          lMMMMM  MMMMMMMMMM  MMMMMMMMMM,          Term Font »$f4 $TermFont
$f7          KMMMMM  MMMMMMMMMM  MMMMMMMMMM.          Uptime    »$f4$uptime 
$f7         ;WMMMMMkNMMMMMMMMMMONMMMMMMMMMW:          HDD       »$f4 $f2$use$f4 / $size$gb
$f7       oNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO         Packages  »$f2 $pacman
$f7      .,cxKWMMMMMMMMMMMMMMMMMMMMMMMMMMMXdxo        Shell     »$f7 $Shell$NC
$f7         ;kWMMMMMMMMMMMMMMMMMMMMMMMMMMMM:          Terminal  »$f7 $Terminal$NC 
$f7          ;kWMMMMMMMMMMMMMMMMMMMMMMMMMM:           Editor    »$f7 $Editor$NC 
$f7           ;kWMMMMMMMMMMMMMMMMMMMMMMMM:          
$f7        .::,  .;ok0NMMMMWNK0kdoc;'  'cxK0          OS »$f4 $OS$NC
$f1                   .:cc:;;.                        WM »$f7$wm 
$f1                   .o0MMMK'                        @  »$f7 Arch Linux
$f1                     xMMM:                         
$f1                     KMMMl                         CPU$f7$cpu 
$f1                    .MMMMo                         GPU$f7$gpu 
$f1                    ,MMMMx                        
$f1                    oMMMMx                        
$f1                    OMMMMO                        $f7"And you can go fuck yourself, bitch"
$f1                    .OMMMd                                                     $f7 the$f1 cat     
$f1                      :Nl       

EOF
