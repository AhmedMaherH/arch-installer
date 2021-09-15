#!/bin/bash

# Installing predefined packages listed in pkg.md
pacman -S --needed --noconfirm $(cat pkg.md | sed '/^\#/d' | sed '/^$/d' | tr '\n' ' ')
pip3 install img2pdf

# Installing predefined AUR packages listed in aur-pkg.md
paru -S --needed --skipreview $(cat aur-pkg.md | sed '/^\#/d' | sed '/^$/d' | tr '\n' ' ')

# Changing nemo's terminal to alacritty
gsettings set org.cinnamon.desktop.default-applications.terminal exec alacritty

rm /usr/share/icons/default/index.theme
cp index.theme /usr/share/icons/default/
