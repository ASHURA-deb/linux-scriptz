#!/bin/bash
echo "installing required game application for $USER"

echo "updating system mirror list"
sudo pacman -Syu --noconfirm

echo "installing wine"
sudo pacman -S wine --noconfirm
echo "wine installed"

echo "installing gamemode"
sudo pacman -S gamemode --noconfirm
echo "gamemode installed"  

echo "installing vulkan packages"

echo "installing vulkan for amd"
sudo pacman -Syu vulkan-icd-loader vulkan-tools mesa vulkan-radeon
echo "vulkan for amd installed"

echo "installing vulkan for nvidia"
sudo pacman -Syu vulkan-icd-loader vulkan-tools nvidia-utils
echo "vulkan for nvidia installed"

echo "installing vulkan for intel"
sudo pacman -Syu vulkan-intel
echo "vulkan for intel installed"

sudo pacman -S dxvk vkd3d

echo "Vulkan packages installed"

echo "installing antimicrox"
sudo pacman -S antimicrox --noconfirm
echo "antimicrox installed"

echo "installing steam"
sudo pacman -S steam --noconfirm
echo "steam installed"

echo "installing lutris"
sudo pacman -S lutris --noconfirm   
echo "lustris installed"

echo "Game applications installed successfully "

