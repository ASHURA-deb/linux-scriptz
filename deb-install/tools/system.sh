#!/bin/bash
echo "HELLO $USER"
echo "installing system monitoring tools"
echo "updating system"

sudo apt update -y
echo "done"

echo "installing htop"
sudo apt install htop -y
echo "Done"

echo "Installing btop"
sudo add-apt-repository ppa:bashtop-monitor/bashtop && sudo apt update && sudo apt install bashtop
echo "Done"


echo "Installing timeshift"
sudo apt install timeshift -y
echo "Done"
