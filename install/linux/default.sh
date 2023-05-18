#!/usr/bin/env bash

# Reload zsh settings
exec $SHELL -l

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
cp -r $DOTFILES_DIR/extras/fonts/* ~/.local/share/fonts/
sudo cp -r $DOTFILES_DIR/extras/fonts/* /usr/share/fonts

fc-cache -v
# Reload bash
exec $SHELL -l

# Change login background
sudo cp -r $DOTFILES_DIR/config/awesome/theme/assets/wallpapers/wallhaven-mdoj7m.png /usr/share/backgrounds

# Change the background in
sudo cp -r $DOTFILES_DIR/extras/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
