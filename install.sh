#! /bin/bash

# Repository for newly NeoVim version
sudo add-apt-repository ppa:neovim-ppa/stable

# Update repository list
sudo apt update

# install font needed for airline themes and NeoVim
sudo apt install fonts-powerline neovim

# Create symbolic link to nvim config
ln -nfs "$(pwd)/nvim" "$HOME/.config/nvim"

# Copy need fonts (for icondev)
mkdir -p "$HOME/.fonts"
cp "$(pwd)/fonts/*" "$HOME/.fonts"

# Run PlugInstall to install all plugins needed
nvim +PlugInstall
