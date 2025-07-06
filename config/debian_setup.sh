#! /bin/bash

sudo apt-get update && sudo apt-get upgrade -y 

apt_deps=(
  # common
  python3-pip
  python3-dev
  build-essential
  cmake
  git
  pkg-config
  nodejs
  npm
  curl
  wget

  # dev
  neovim
  fish
  tmux 
)

sudo apt-get install -y "${apt_deps[@]}"

# docker 
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh 

# font
mkdir -p ~/.fonts
cp -r ~/dotfiles/fonts/CodeNewRoman/* ~/.fonts/
fc-cache -fv

# fish to default terminal 
fish_path=$(command -v fish)

if ! grep -q "$fish_path" /etc/shells; then
  echo "$fish_path" | sudo tee -a /etc/shells
fi

chsh -s "$fish_path"
