#!/bin/bash


set -e

echo "Start setup:"


# update system

echo "update system ...."
sudo apt update && sudo apt upgrade -y

# install important packages
echo "install essential packages"
xargs -a ../packages/packages-server.txt sudo apt install -y

# copy dotfiles
echo "copy dotfiles"
rsync -av ../dotfiles/ ~/



echo "Ubuntu setup complete"