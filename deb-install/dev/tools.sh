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
wget https://dev.mysql.com/get/mysql-apt-config_0.8.24-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.34-1_all.deb
sudo apt-get update -y
sudo apt-get install mysql-server -y
systemctl status mysql
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
