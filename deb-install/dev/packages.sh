#!/bin/bash
echo "Hello $USER"
echo "updating system"
sudo apt update -y
echo "Update finished"

echo "installing git"
sudo apt install git -y

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

echo "Installing Snap"
sudo apt install snapd
echo "Done"

echo "Installing Curl"
sudo apt install curl
echo "Done"

echo "Install uv"
curl -LsSf https://astral.sh/uv/install.sh | sh
echo "Done"

echo "Installing pipx"
sudo apt update
sudo apt install pipx
pipx ensurepath
echo "Done"

echo "Installing Cargo"
curl https://sh.rustup.rs -sSf | sh
echo "Done"
