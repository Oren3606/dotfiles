#!/bin/bash

chosen=$(echo -e "Cancel\nPower Off\nReboot\nSuspend\nLog Out" | rofi -dmenu -p "Power Menu")

case "$chosen" in
    "Power Off") systemctl poweroff ;;
    "Reboot") systemctl reboot ;;
    "Suspend") systemctl suspend ;;
    "Log Out") swaymsg exit ;;
    *) exit 1 ;;
esac

