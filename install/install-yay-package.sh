#!/usr/bin/env bash

set -e

# ┌────────────────────────────────────────────┐
# │         Install YAY Package Manager        │
# └────────────────────────────────────────────┘

echo "Installing YAY Package Manager..."

if ! command -v yay &>/dev/null; then
	echo "yay not found, installing..."
	sudo pacman -S --needed git base-devel
	git clone https://aur.archlinux.org/yay.git
	cd yay && makepkg -si
	cd .. && rm -rf yay
	echo "✔ YAY Package Manager installed!"
else
	echo "✔ YAY Package Manager already installed."
fi