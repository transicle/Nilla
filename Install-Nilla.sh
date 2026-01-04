#!/bin/bash
#
#  Install the Nilla configuration files for Hyprland
#  from the GitHub repository.
#

NILLA_REPO="https://github.com/transicle/Nilla.git"
sudo pacman -S git --noconfirm
cd $HOME
mkdir Nilla
cd Nilla
git clone $NILLA_REPO
rm -rf $HOME/.config/hypr
mv ./hypr $HOME/.config/
cd ..
rm -rf Nilla
