#!/bin/bash
echo "Hello, $USER"
echo "Updating system"
sudo apt update

echo "Installing obsidian"
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.11.7/obsidian_1.11.7_amd64.deb
echo "Done"
rm obsidian_1.11.7_amd64.deb

echo "Installing tradingview"
sudo snap install tradingview
echo "Go make some bread king"

echo "Installing spotify"
snap install spotify

echo "adding spicetify"
curl -fsSL https://gist.githubusercontent.com/themagicalmammal/f6f086f9c701924371e1d334c60c8562/raw/d331b26ef430ffa2887172552ce9bbf91df74f3e/spicetify.sh | sh
echo "adding marketplace"
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
echo "Enjoy da music"

echo "Installing discord or custom discord client(vencord,legcord) for $USER"

echo "installing official discord"
wget -O discord.deb https://discord.com/api/download?platform=linux
sudo apt install ./discord.deb
echo "official discord installed"
rm discord.deb

echo "vencord installation"
sh -c "$(curl -sS https://vencord.dev/install.sh)"
echo "vencord installed"

echo "legcord installation"
sudo snap install legcord
echo "legcord installed"

echo "Installing Telegram-desktop"
sudo snap install telegram-desktop
echo "Done"
