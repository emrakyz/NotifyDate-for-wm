# Description
This script outputs the date and time via the notification daemon, useful for those who have not yet developed a polybar or have already done so.
# How to use
* Сopy the text to a file.
* Save to any directory.
* To enter in the hotkey daemon.
# Script
```
#!/bin/sh

D=$(date  +%d-%m-%y)
T=$(date +%H:%M)
notify-send -a "your wm" " $D  "" $T"
#  - the icon in the Nerd Font
```
# variant of a bloated script
```
#!/usr/bin/env bash
#
# Notify - Current time via notification

main() {
    vars
    notify-send -t $EXPT $TITLE "$TEXT"
}

vars() {
    TITLE="your wm"
    EXPT='5000'
    DATE="$(date +%d-%m-%y)"
    WDAY="$(date +%A)"
    TIME="$(date +%H:%M)"
    TEXT="It's $TIME\n$WDAY $DATE"
}

main
```
# sxhkdrc
```
super + alt + t
  bash ~/any/directory/date.sh
# in any directory
# any hotkey
```
# Screenshot
using Dunst as an example.


![image](https://github.com/FarParticul/NotifyDate-for-wm/assets/157636018/b7e73ef5-1b12-47e9-af64-2b5305f7ae12)
