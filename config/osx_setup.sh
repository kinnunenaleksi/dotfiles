#! /bin/bash

set -e

# install homebrew if not found 
if ! command -v brew&> /dev/null/; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update 
brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew tap homebrew/services

brew_deps=(
  neovim
  fish
  docker 
  ipython
  pyenv
  stow
  tmux
  skim 
)

brew_deps_cask=(
  iterm2
  alt-tab
  rectangle
  pgadmin4
  firefox
  font-hack-nred-font
  font-source-code-pro

  )

# install all packages
brew install "${brew_deps[@]}"
brew install --cask "${brew_deps_cask[@]}"

# make fish the default terminal 
fish_path=$(command -v fish)

if ! grep -q "$fish_path" /etc/shells; then
  echo "$fish_path" | sudo tee -a /etc/shells
fi

chsh -s "$fish_path"
