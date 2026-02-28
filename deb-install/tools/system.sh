#!/bin/bash
echo "HELLO $USER"
echo "installing system monitoring tools"
echo "updating system"

sudo apt update -y
echo "done"

echo "Installing pipewire"
sudo apt install pipewire pipewire-pulse wireplumber.
echo "Done"

echo "installing htop"
sudo apt install htop -y
echo "Done"

echo "Installing btop"
sudo apt update && sudo apt install btop
echo "Done"

echo "Installing Syncthing"
# Add the release PGP keys:
sudo mkdir -p /etc/apt/keyrings
sudo curl -L -o /etc/apt/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg

# Add the "stable-v2" channel to your APT sources:
echo "deb [signed-by=/etc/apt/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable-v2" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Add the "candidate" channel to your APT sources:
echo "deb [signed-by=/etc/apt/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing candidate" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Update and install syncthing:
sudo apt-get update
sudo apt-get install syncthing

echo "Installing timeshift"
sudo apt install timeshift -y
echo "Done"

echo "Installing Impala"
cargo install impala 
echo "Done installing impala"
