#!/usr/bin/env bash

set -e

# ┌────────────────────────────────────────────┐
# │         Install Wallpaper Bank             │
# └────────────────────────────────────────────┘

echo "Installing Wallpaper Bank..."

mkdir -p ~/Pictures

if [ ! -d ~/Pictures/wallpaper ]; then
	git clone https://github.com/kntlifelovelive/bubuwallpaper.git ~/Pictures/wallpaper
	echo "✔ Wallpaper installed successfully!"
else
	echo "✔ Wallpaper folder already exists."
fi