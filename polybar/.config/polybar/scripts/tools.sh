#!/usr/bin/env bash

check_dependency() {
  if [ "$#" -eq 1 ]; then
    command -v "$1" 2> /dev/null
  fi
}

check_dependencies() {
  if [ "$#" -gt 0 ]; then
    for dep in "$@"; do
      local res=$(check_dependency "$dep")
      if [ -z "$res" ]; then
        notify-send "Brak $dep"
      else
        echo $dep
      fi
    done
  fi
}
