#!/bin/bash
echo "HELLO $USER"
echo "installing system monitoring tools"
echo "updating system"

sudo apt update -y
echo "done"

echo "installing htop"
sudo apt install htop -y
echo "Done"

echo "Installing timeshift"
sudo apt install timeshift -y
echo "Done"

echo "installing productivity tools"
echo "installing goforit"
sudo add-apt-repository ppa:go-for-it-team/go-for-it-stable
sudo apt-get update -y
sudo apt-get install go-for-it -y
echo "done"

echo "installing safeeyes"
    sudo add-apt-repository ppa:safeeyes-team/safeeyes
    sudo apt update -y
    sudo apt install safeeyes -y
echo "done"

echo "sudo apt install shutter"
sudo apt-get install shutter -y
echo "Done"


