#!/bin/bash

echo "Installing Console emulators for $USER"

echo "Updating system"
sudo pacman -Syu 

echo "installing Snap & flatpak"
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket

sudo pacman -S flatpak

echo "Installing RetroArch"
sudo pacman -Sy retroarch
