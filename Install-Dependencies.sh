#!/usr/bin/env bash
#
# Install all of the dependencies that Nilla depends on,
# including the applications used.
#

sudo pacman -Syu --noconfirm # Update packages in case of updates.

sudo pacman -S \
	nautilus \
	rofi \
	discord \
	kitty \
	git \
	dunst \
	flatpak \
	ttf-nerd-fonts-symbols \
	ttf-nerd-fonts-symbols-mono \
	jq \
	--noconfirm

flatpak update -y
