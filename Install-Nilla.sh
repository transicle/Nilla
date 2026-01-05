#!/bin/bash
#
#  Install the Nilla configuration files for Hyprland
#  from the GitHub repository.
#

NILLA_REPO="https://github.com/transicle/Nilla.git"
chmod +x ./Install-Dependencies.sh
./Install-Dependencies.sh
cd $HOME
mkdir Nilla
cd Nilla
git clone $NILLA_REPO
rm -rf $HOME/.config/hypr
mv ./hypr $HOME/.config/
rm -rf $HOME/.config/dunst
mv ./dunst $HOME/.config/
cd ..
rm -rf Nilla
