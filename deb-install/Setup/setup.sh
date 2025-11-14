#!/bin/bash
echo "Welcome, $USER!"
echo "Updating system"
sudo apt update && sudo apt upgrade -y
echo "Getting user information....."
sudo apt install -y neofetch
echo "Cleaning up real quick"
sudo apt autoremove -y
sudo apt autoclean
echo "All done, now showing system info"
neofetch
