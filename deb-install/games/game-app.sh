#!/bin/bash
echo "Installing required game applications for $USER"

echo "Getting script ready....."

sudo apt install flatpak 
sudo apt install plasma-discover-backend-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo apt update
sudo apt install snapd 
echo "Flatpak and Snapd installed"

echo "Updating system"
sudo apt update && sudo apt upgrade -y

echo "installing wine"
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install wine32
sudo apt install wine64
echo "Wine installed"

echo "installing gameMode"
sudo apt install gamemode -y
echo "GameMode installed"

echo "Installing Vulkan packages"

# echo "for amd"
# sudo apt install mesa-vulkan-drivers vulkan-tools -y
# echo "Vulkan for AMD installed"
#
# echo "for nvidia"
# sudo apt install nvidia-driver nvidia-vulkan-icd -y
# echo "vulkan for nvidia installed"

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
# sudo apt install steam -y
sudo dpkg --add-architecture i386
sudo apt update
dpkg --print-foreign-architectures
sudo apt install steam-installer -y
apt-cache policy steam-installer
echo "steam installed"


echo "installing lutris"
echo -e "Types: deb\nURIs: https://download.opensuse.org/repositories/home:/strycore:/lutris/Debian_13/\nSuites: ./\nComponents: \nSigned-By: /etc/apt/keyrings/lutris.gpg" | sudo tee /etc/apt/sources.list.d/lutris.sources > /dev/null
wget -q -O- https://download.opensuse.org/repositories/home:/strycore:/lutris/Debian_13/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/lutris.gpg
sudo apt update
sudo apt install lutris
echo "Lutris installed"

echo "Optional installation"

echo "Installing qBittorrent"
sudo apt install qbittorrent -y
echo "qBittorrent installed"

echo "Installing JDownloader2 (via Snap or manual)"
snap install jdownloader2

echo "Game applications installed successfully"
