#!/bin/bash
echo "HELLO $USER"
echo "Getting media tools ready"
echo "Updating system"
sudo apt update -y
echo "Done"
echo "INstalling VLC for $USER"
sudo apt install vlc
echo "Done, enjoy"
echo "Now installling OBS"
sudo add-apt-repository ppa:obsproject/obs-studio
echo "installing OBS"
sudo apt install obs-studio
echo "Done Enjoy OBS"
