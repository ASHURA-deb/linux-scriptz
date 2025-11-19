#!/bin/bash
echo "Welcome, $USER!"

echo "Updating system"
sudo pacman -Syu --noconfirm
echo "System Updated"

echo "Getting user information....."
sudo pacman -S fastfetch --noconfirm 
echo "User information tool installed"

echo "Cleaning up real quick"
sudo pacman -Rns $(pacman -Qtdq) --noconfirm
echo "All done, now showing system info"

echo "Installing yay (AUR helper)"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay

echo "yay installed"


echo "Installing recommended drivers"
sudo pacman -S ntfs-3g --noconfirm
echo "Recommended drivers installed"

fastfetch