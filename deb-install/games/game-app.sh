#!/bin/bash
echo "Installing required game applications for $USER"

echo "Getting script ready....."

sudo apt install flatpak snapd -y
echo "Flatpak and Snapd installed"

echo "Updating system"
sudo apt update && sudo apt upgrade -y

echo "installing wine"
sudo apt install wine64 -y
echo "Wine installed"

echo "installing gameMode"
sudo apt install gamemode -y
echo "GameMode installed"

echo "Installing Vulkan packages"

echo "for amd"
sudo apt install mesa-vulkan-drivers vulkan-tools -y
echo "Vulkan for AMD installed"

echo "for nvidia"
sudo apt install nvidia-driver nvidia-vulkan-icd -y
echo "vulkan for nvidia installed"

echo "for intel"
sudo apt install mesa-vulkan-drivers -y
echo "Vulkan for Intel installed"

echo "installing DXVK and VKD3D"
sudo apt install dxvk libvkd3d-dev -y
echo "DXVK & VKD3D installed"

echo "Installing Ludusavi WARNING!!: Must have flatpak installed"
flatpak install flathub com.github.mtkennerly.ludusavi -y

echo "installing rclone"
sudo apt install rclone -y
echo "rclone installed"

echo "installing antimicrox  WARNING!!: Must have flatpak installed"
flatpak install flathub io.github.antimicrox.antimicrox -y

echo "installing steam"
sudo apt install steam -y
echo "steam installed"


echo "installing lutris"
sudo add-apt-repository ppa:lutris-team/lutris -y
sudo apt install lutris -y
echo "Lutris installed"

echo "Optional installation"

echo "Installing qBittorrent"
sudo apt install qbittorrent -y
echo "qBittorrent installed"

echo "Installing JDownloader2 (via Snap or manual)"
snap install jdownloader2

echo "Game applications installed successfully"