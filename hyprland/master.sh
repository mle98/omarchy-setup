#!/usr/bin/env bash
HYPER_CONFIG="$HOME/.config/hypr/hyprland.conf"
CONFIG_LINE="source = ~/projects/omarchy-setup/hyprland/overrides.conf
"
cat "$HYPER_CONFIG"
grep -q \""$CONFIG_LINE\"" "$HYPER_CONFIG" || echo "$CONFIG_LINE" >> "$HYPER_CONFIG"
grep -q "$CONFIG_LINE" "$HYPER_CONFIG"
echo $?
