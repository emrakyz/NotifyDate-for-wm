#!/bin/sh

D=$(date  +%d-%m-%y)
T=$(date +%H:%M)
notify-send -a "your wm" " $D  "" $T"
#  - the icon in the Nerd Font
# To make the file executable, write: chmod +x date.sh
