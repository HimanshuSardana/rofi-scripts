#!/bin/bash

rofi_command="rofi -dmenu -i -p Option"

shutdown=" Shutdown"
reboot=" Reboot"
lock=" Lock"

options="$shutdown\n$reboot\n$lock"
selected=$(echo -e "$options" | $rofi_command)

case $selected in
    $shutdown)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        i3lock
        ;;
    *)
        exit 1
        ;;
esac

