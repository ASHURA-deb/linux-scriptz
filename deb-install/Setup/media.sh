#!/bin/bash
echo "HELLO $USER"
echo "Getting media tools ready"
echo "Updating system"

sudo apt update -y
echo "Done"

echo "Installing VLC  or mpv for $USER"
sudo apt install vlc 
echo "Done, enjoy"

echo "installing mpv"
sudo apt install mpv 
echo "mpv installed"

echo "Now installling OBS"
sudo add-apt-repository ppa:obsproject/obs-studio
echo "installing OBS"
sudo apt install obs-studio -y
echo "Done Enjoy OBS"

