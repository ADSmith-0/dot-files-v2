#!/usr/bin/env bash
set -e

DIR=".waybar-source"

sudo pacman -S meson ninja
if [ ! -d $DIR ]; then
	cd ~
	git clone https://github.com/Alexays/Waybar $DIR
fi
cd $DIR
meson setup build
meson configure build -Dprefix="/usr"
meson setup build
sudo ninja -C build install
