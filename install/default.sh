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
cp -r $DOTFILES_DIR/extras/fonts/* ~/.local/share/fonts/

fc-cache -v
