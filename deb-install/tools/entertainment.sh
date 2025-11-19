#!/bin/bash
echo "Hello, $USER"
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

echo "vencord installation"
sh -c "$(curl -sS https://vencord.dev/install.sh)"
echo "vencord installed"

echo "legcord installation"
sudo snap install legcord
echo "legcord installed"

echo "installing whatsapp"
sudo npm install nativefier -g
nativefier "https://web.whatsapp.com/" --name "WhatsAppQT"
