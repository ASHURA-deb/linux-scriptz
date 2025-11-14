#!/bin/bash
echo "Getting script ready....."
echo "Updating system...."
sudo apt update -y
echo "installing browsers(chromium,firefox,brave-browser or chrome) for $USER"
echo "installing chromium....."
sudo apt install chromium-browser
echo "Chromium installed"
echo "Installing firefox"
sudo apt install firefox
echo "firefox installed"
echo "installing brave-browser"
sudo apt-install curl
curl -fsS https://dl.brave.com/install.sh | sh
echo "brave-browser installed"
echo "installing chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb 
echo "chrome installed successfully"