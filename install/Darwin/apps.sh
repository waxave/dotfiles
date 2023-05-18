#!/usr/bin/env bash

# Installation of required packages
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

brew update --force # https://github.com/Homebrew/brew/issues/1151
brew bundle --file=- <<EOF
tap "thoughtbot/formulae"
tap "homebrew/services"

# Unix
brew "universal-ctags"
brew "git"
brew "openssl"
brew "rcm"
brew "reattach-to-user-namespace"
brew "the_silver_searcher"
brew "vim"
brew "watchman"
brew "zsh"
brew "curl"
brew "ripgrep"
brew "fd"
brew "bat"
brew "lsd"

# GitHub
brew "gh"

# Image manipulation
brew "imagemagick"

# PDF Renderingπ
brew "poppler"

# Programming language prerequisites and package managers
brew "libyaml" # should come after openssl
brew "coreutils"
brew "yarn"
cask "gpg-suite-no-mail"

# Databases
brew "postgresql@14", restart_service: :changed
brew "redis", restart_service: :changed

# Coding tools
brew "asdf"
brew "kakoune"
brew "neovim"
brew "helix"
brew "kitty"

# Other
brew "firefox"
EOF

brew install --cask visual-studio-code
brew install --cask rectangle

# Install Plug for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install plug for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
