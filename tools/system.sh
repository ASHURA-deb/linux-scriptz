#!/bin/bash
echo "HELLO $USER"
echo "installing syste monitoring tools"
echo "updating system"
sudo apt update
echo "done"
echo "installing htop"
sudo apt install htop
echo "Done"
echo "Installing timeshift"
sudo apt install timeshift
echo "Done"
echo "installing productivity tools"
echo "installing goforit"
sudo add-apt-repository ppa:go-for-it-team/go-for-it-stable
sudo apt-get update
sudo apt-get install go-for-it
echo "done"
echo "installing safeeyes"
    sudo add-apt-repository ppa:safeeyes-team/safeeyes
    sudo apt update
    sudo apt install safeeyes
echo "done"
echo "sudo apt install shutter"
sudo apt-get install shutter
echo "Done"


