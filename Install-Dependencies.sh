#!/bin/bash
#
#  Install all of the dependencies that Nilla depends on,
#  including the applications used.
#

sudo pacman -Syu --noconfirm # Update packages incase of updates.
sudo pacman -S nautilus \
                rofi \
                discord \
                kitty \
                git \
                dunst \
                flatpak --noconfirm

flatpak update -y
