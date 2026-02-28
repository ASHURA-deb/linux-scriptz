#!/bin/bash

echo "Installing Console emulators for $USER"

echo "Updating system"
sudo apt update && upgrade 

echo "installing Snap & flatpak"
sudo apt install snapd
sudo apt install flatpak
sudo apt install plasma-discover-backend-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo "Installing RetroArch"
sudo add-apt-repository ppa:libretro/stable && sudo apt-get update && sudo apt-get install retroarch 
echo "Installed RetroArch"

echo "Installing Duckstation"
wget https://github.com/stenzek/duckstation/releases/download/latest/DuckStation-x64.AppImage
chmod a+x DuckStation-x64.AppImage
echo "Installed Duckstation"
rm DuckStation-x64.AppImage

echo "Installing Playstation 2 emulator"
echo "Installing Pcsx2"
flatpak install flathub net.pcsx2.PCSX2
echo "Installed Pcsx2"

echo "Installing Xbox emulator"
echo "Installing xemu"
flatpak install flathub app.xemu.xemu
echo "Installed xemu"

echo "Installing Playstation 3 emulator"
echo "Installing Rpcs3"
echo "installing required stuff"
sudo apt install libboost-all-dev libvulkan1 libvulkan-dev
wget --content-disposition https://rpcs3.net/latest-linux-x64
chmod a+x ./rpcs3-*_linux64.AppImage && ./rpcs3-*_linux64.AppImage
echo "Installed Rpcs3"
rm rpcs3-v0.0.39-18850-b30a20c2_linux64.AppImage

echo "Installing Gamecube & Wii emulator"
echo "Installing dolphin"
flatpak install flathub org.DolphinEmu.dolphin-emu
echo "Done"






sudo reboot
