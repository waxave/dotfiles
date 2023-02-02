#!/usr/bin/env bash

# Reload zsh settings
source ~/.zshrc

# Installing asdf plugins
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin add nodejs
asdf plugin-add crystal https://github.com/asdf-community/asdf-crystal.git

# Creating workspace folders
mkdir -p ~/.workspace
mkdir -p ~/.workspace/ruby
mkdir -p ~/.workspace/javascript
mkdir -p ~/.workspace/crystal
mkdir -p ~/.workspace/elixir
mkdir -p ~/.workspace/other

# Installing fonts
sudo cp -r $DOTFILES_DIR/extras/fonts/* /usr/share/fonts

fc-cache -v
# Reload bash
source ~/.zshrc

# Change login background
sudo cp -r $DOTFILES_DIR/config/awesome/theme/assets/wallpapers/wallhaven-mdoj7m.png /usr/share/backgrounds

# Configure git values
git config --global user.name $DOTFILES_NAME
git config --global user.email $DOTFILES_EMAIL

