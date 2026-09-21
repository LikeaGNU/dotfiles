#!/usr/bin/env bash

script_pwd=$(dirname $(readlink -f "$0"))

. ${script_pwd}/tools.sh

power_menu() {
  if [ ! -z "$(check_dependencies rofi)" ]; then
    res="$(echo -e "Wyłącz\nUruchom ponownie\n" | rofi -dmenu)"

    case "$res" in
         "Wyłącz")
            poweroff
            ;;
         "Uruchom ponownie")
            reboot
            ;;
         *)
    esac
  fi
}

power_menu
