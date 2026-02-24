#!/bin/bash
echo "Welcome $USER"
echo"Updating system"
sudo apt update
echo "done"

echo"Now install Terminal tools"
:echo "Lazygit"
sudo apt install lazygit -y

echo "Posting"
pipx install posting

echo "memray"
python3 -m pip install memray

echo "dolphie"
pip install dolphie

echo "harlequin"
python -m pip install harlequin

echo "Installing Database Adapters"
uv tool install 'harlequin[postgres,mysql,s3]'
