#!/usr/bin/env bash
# Create symlinks

declare -a SYMLINK_FROM=(
  "$DOTFILES_DIR/config/shell/shell_aliases"
  "$DOTFILES_DIR/config/shell/shell_config"
  "$DOTFILES_DIR/config/shell/shell_functions"
  "$DOTFILES_DIR/config/shell/shell_exports"
  "$DOTFILES_DIR/config/ackrc"
  "$DOTFILES_DIR/config/bashrc"
  "$DOTFILES_DIR/config/zshrc"
  "$DOTFILES_DIR/config/curlrc"
  "$DOTFILES_DIR/config/gemrc"
  "$DOTFILES_DIR/config/git/gitattributes"
  "$DOTFILES_DIR/config/git/gitconfig"
  "$DOTFILES_DIR/config/git/gitignore"
  "$DOTFILES_DIR/config/kitty/kitty.conf"
  "$DOTFILES_DIR/config/helix"
  "$DOTFILES_DIR/config/nvim"
  "$DOTFILES_DIR/config/kak"
  "$DOTFILES_DIR/config/nvim/init.vim"
)

declare -a SYMLINK_TO=(
  "$HOME/.shell_aliases"
  "$HOME/.shell_config"
  "$HOME/.shell_functions"
  "$HOME/.shell_exports"
  "$HOME/.ackrc"
  "$HOME/.bashrc"
  "$HOME/.zshrc"
  "$HOME/.curlrc"
  "$HOME/.gemrc"
  "$HOME/.gitattributes"
  "$HOME/.gitconfig"
  "$HOME/.gitignore"
  "$CONFIG_DIR/kitty/kitty.conf"
  "$CONFIG_DIR/helix"
  "$CONFIG_DIR/nvim"
  "$CONFIG_DIR/kak"
  "$HOME/.vimrc"
)

for i in ${!SYMLINK_FROM[@]}; do
  echo "Creating the link of ${SYMLINK_FROM[$i]}"
  ln -fs "${SYMLINK_FROM[$i]}" "${SYMLINK_TO[$i]}"
done

unset SYMLINK_FROM
unset SYMLINK_TO
