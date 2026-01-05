#!/bin/bash
#
#  Install all of the dependencies that Nilla depends on,
#  including the applications used.
#

sudo pacman -Syu --noconfirm # Update packages incase of updates.
sudo pacman -Sy nautilus \
                rofi \
                discord \
                kitty \
                git \ 
                flatpak --noconfirm

yes | flatpak update
