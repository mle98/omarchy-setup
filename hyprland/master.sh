#!/usr/bin/env bash
HYPER_CONFIG="$HOME/.config/hypr/hyprland.conf"
CONFIG_LINE="source = ~/projects/omarchy-setup/hyprland/overrides.conf
"
grep -q \""$CONFIG_LINE\"" "$HYPER_CONFIG" || echo "$CONFIG_LINE" >> "$HYPER_CONFIG"

grep -q "$CONFIG_LINE" "$HYPER_CONFIG"
if [[ $? -eq 0 ]]; then
  echo '----------Hyperland config updated successfully----------'
else
  echo '----------ERROR updating hyperland config----------'
  exit 1
fi

