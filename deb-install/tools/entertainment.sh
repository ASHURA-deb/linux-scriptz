#!/bin/bash
echo "Hello, $USER"
echo "Installing spotify"
snap install spotify
echo "Enjoy da music"


echo "Installing discord or custom discord client(vencord,legcord) for $USER"

echo "installing official discord"
sudo snap install discord
echo "official discord installed"


echo "vencord installation"
sh -c "$(curl -sS https://vencord.dev/install.sh)"
echo "vencord installed"

echo "legcord installation"
sudo snap install legcord
echo "legcord installed"

