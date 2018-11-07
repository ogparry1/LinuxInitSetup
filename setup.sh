#!/bin/bash

# Add neccessary repositories
ppafile="./ppa.txt"
while read -r line; do
    ppa="$line"
    eval "add-apt-repository -y $ppa"
done < "$ppafile"

# Update all software
apt update && apt upgrade && apt dist-upgrade

# Install software
softwarefile="./software.txt"
while read -r line; do
    software="$line"
    eval "apt install $software"
done < "$softwarefile"

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Replace .zshrc and .nvimrc
cp ./zshrc $HOME/.zshrc
cp ./nvimrc $HOME/.nvimrc

# Create symlink to Windows
ln -s /mnt/c/Users/ogparry1/ $HOME/Windows
