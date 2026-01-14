#!/bin/bash
#
#  Install the Nilla configuration files for Hyprland
#  from the GitHub repository.
#

NILLA_REPO="git@github.com:transicle/Nilla.git"

chmod +x ./Install-Dependencies.sh
./Install-Dependencies.sh

rm -rf $HOME/.config/hypr
cp -r ./hypr $HOME/.config/

rm -rf $HOME/.config/dunst
cp -r ./dunst $HOME/.config/

hyprctl reload
