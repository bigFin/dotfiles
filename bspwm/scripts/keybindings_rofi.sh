#!/usr/bin/env bash
if [[ $1 == "chrome-profiles" ]]; then
    rofi -modi 'Chrome Profile':/home/fin/.config/rofi/rofi-chrome-profile-launcher.sh -show 'Chrome Profile'
else
awk '/^[a-z]/ && last {print "<small>",$0,"\t",last,"</small>"} {last=""} /^#/{last=$0}' ~/.config/sxhkd/sxhkdrc |
    column -t -s $'\t' |
    rofi -dmenu -i -p "keybindings:" -markup-rows -no-show-icons -width 1000 -lines 15 -yoffset 40
fi
