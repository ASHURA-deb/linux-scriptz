#!/bin/bash
echo "Hello $USER"
echo "updating system"
sudo apt update -y
echo "Update finished"

echo "Getting dev tools ready"

echo "Installing vim"
sudo apt install vim -y
echo "Done"

echo "Installing MySql"
echo "Oracle don't care about no linux and shii and also fuck oracle"
echo "Load up that mariadb boi"
echo "Installing MariaDB"
sudo apt install mariadb-server mariadb-client
echo "Securing installation"
sudo mariadb-secure-installation
echo "Starting"
sudo systemctl start mariadb
echo "Verifying installation"
mariadb -u root -p 
echo "Done"

echo "Installing vs-code"
sudo snap install code --classic	
echo "Done"

echo "installing neovim"
sudo snap install nvim --edge --classic
echo "Done"

#Lazyvim config
npm install tree-sitter-cli
npm install -g live-server
npm install -g pyright
snap install ghostty --classic

mv ~/.config/nvim{,.bak}

mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
