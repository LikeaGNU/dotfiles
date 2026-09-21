#!/usr/bin/bash

function move_polybar() {
  FOCUSED_MONITOR=$(bspc query -M -m --names)
  NEXT_MONITOR=$(bspc query -M -m next --names)
  polybar-msg action "#bar.monitor.${FOCUSED_MONITOR}"
  polybar-msg cmd restart
}

move_polybar
