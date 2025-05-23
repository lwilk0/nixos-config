#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Power Menu

# Modified by Anhsirk0 for anhsirk0/rofi-config

# Current Theme
dir="$HOME/.config/rofi/powermenu/"

# Options
shutdown=''
reboot=''
lock=''
suspend='󰤁'
logout='󰍃'
yes=''
no=''

# Rofi CMD
rofi_cmd() {
  rofi -dmenu \
    -theme ${dir}/config.rasi
}

# Pass variables to rofi dmenu
run_rofi() {
  echo -e "$lock\n$suspend\n$logout\n$reboot\n$shutdown" | rofi_cmd
}

# Execute Command
run_cmd() {
  if [[ $1 == '--shutdown' ]]; then
    systemctl poweroff
  elif [[ $1 == '--reboot' ]]; then
    systemctl reboot
  elif [[ $1 == '--suspend' ]]; then
    mpc -q pause
    amixer set Master mute
    systemctl suspend
  elif [[ $1 == '--logout' ]]; then
    hyprctl dispatch exit
  fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
$shutdown)
  run_cmd --shutdown
  ;;
$reboot)
  run_cmd --reboot
  ;;
$lock)
  if [[ -x '/usr/bin/betterlockscreen' ]]; then
    betterlockscreen -l
  elif [[ -x '/usr/bin/i3lock' ]]; then
    i3lock
  fi
  ;;
$suspend)
  run_cmd --suspend
  ;;
$logout)
  run_cmd --logout
  ;;
esac
