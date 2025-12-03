sudo pacman -R 1password-beta 1password-cli aether kdenlive localsend obs-studio obsidian signal-desktop xournalpp typora asdcontrol

read -p 'Please update omarchy now. The script will continue after confirming....'

set -e
./hyprland/master.sh
./security/master.sh

set +x
