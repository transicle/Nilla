#!/usr/bin/env bash
#
#  Install the Nilla configuration files for Hyprland
#  from the GitHub repository.
#

# NILLA_REPO="git@github.com:transicle/Nilla"
NILLA_REPO="https://github.com/transicle/Nilla"

cd $HOME
mkdir NILLA_TEMP
cd NILLA_TEMP

git clone $NILLA_REPO

cd Nilla
chmod +x ./Install-Dependencies.sh
./Install-Dependencies.sh

rm -rf $HOME/.config/hypr
cp -r ./hypr $HOME/.config/

rm -rf $HOME/.config/dunst
cp -r ./dunst $HOME/.config/

cd $HOME
rm -rf NILLA_TEMP

hyprctl reload
