#!/usr/bin/env bash

# Installation of required packages
sudo pacman -S --needed base-devel yay curl git kakoune neovim wireguard-tools ripgrep fd papirus-icon-theme vim
yay -S paru kitty visual-studio-code-bin wgcf bat firefox-developer-edition helix
paru -S awesome-git
paru -Sy picom-git alacritty rofi todo-bin acpi acpid acpi_call \
  upower jq inotify-tools polkit-gnome xdotool xclip gpick ffmpeg \
  blueman pamixer brightnessctl scrot redshift feh mpv mpd mpc \
  mpdris2 ncmpcpp playerctl --needed

# Install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2

# Enable music daemon player
systemctl --user enable mpd.service
systemctl --user start mpd.service

# Install p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

# Install Plug for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install plug for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
