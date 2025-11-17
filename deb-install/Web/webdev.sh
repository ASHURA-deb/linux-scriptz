#!/bin/bash
echo "Hello $USER"
echo "updating system"
sudo apt update -y
echo "Update finished"
echo "Getting dev tools ready"
echo "Installing vim"
sudo apt install vim -y
echo "Done"
echo "installing git"
sudo apt install git -y
echo "Installing github desktop"
wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo apt-key add -
echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" | sudo tee /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list
sudo apt update && sudo apt install github-desktop
echo "done"
echo "installing node"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
\. "$HOME/.nvm/nvm.sh"
nvm install 22
node -v
npm -v
sudo apt install nodejs -y
sudo apt install npm -y
echo "Done"
echo "Installing python"
sudo apt install python3 -y
sudo apt install python3-pip -y
sudo apt install python3-dev python3-venv build-essential -y
sudo chown -R $USER:$USER ~/.local
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
echo "Python has been installed"
echo "Installing MySql"
sudo dpkg -i mysql-apt-config_0.8.34-1_all.deb
sudo apt-get update -y
sudo apt-get install mysql-server -y
systemctl status mysql
echo "Done"
echo "Installing vs-code"
sudo apt install software-properties-common apt-transport-https
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode/ stable main" > /etc/apt/sources.list.d/vscode.list'
snap install code
echo "Done"
echo "installing neovim"

sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install neovim

echo "Done"
#Lazyvim config
npm install tree-sitter-cli
npm install -g live-server
npm install -g pyright
sudo apt install lazygit -y
sudo apt install curl -y
snap install ghostty --classic

mv ~/.config/nvim{,.bak}

mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
