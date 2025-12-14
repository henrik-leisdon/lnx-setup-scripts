#!/bin/bash


set -e

echo "Start setup:"


# update system

echo "update system ...."
sudo apt update && sudo apt upgrade -y

# install important packages
echo "install essential packages"
xargs -a packages/packages.txt sudo apt install -y

# copy dotfiles
echo "copy dotfiles"
rsync -av dotfiles/ ~/




# setup gpg

# setup keybindings:
if command -v gsettings >/dev/null; then
  echo "Setting GNOME keybindings..."

  KEY_PATH="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"
  NEW_KEY="$KEY_PATH/custom0/"

  gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings \
    "['$NEW_KEY']"

  gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:$NEW_KEY \
    name 'Terminal'
  gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:$NEW_KEY \
    command 'gnome-terminal'
  gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:$NEW_KEY \
    binding '<Ctrl><Alt>T'
fi

echo "Ubuntu setup complete"