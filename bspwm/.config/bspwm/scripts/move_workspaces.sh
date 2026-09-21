#!/usr/bin/env bash

CURRENT_MONITOR=$(bspc query -M -m)
# TARGET_MONITOR=$(bspc query -M -m | grep -v "$CURRENT_MONITOR")
TARGET_MONITOR=$(bspc query -M -m next)
DESKTOP_LIST=$(bspc query -D -m)


for desktop in "${DESKTOP_LIST}"; do
  bspc desktop --to-monitor "$TARGET_MONITOR" --to-node
done

bspc monitor -f "$TARGET_MONITOR"
