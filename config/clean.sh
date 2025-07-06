#! /bin/bash

apps=("nvim" "tmux" "fish")
base_paths=(
  "$HOME/.config"
  "$HOME/.local/share"
  "$HOME/.local/state"
  "$HOME/.cache"
)

for app in "${apps[@]}"; do 
  for base in "${base_paths[@]}"; do
    target="$base/$app"
    if [ -d "$target" ]; then
      rm -rf "$target"
    fi 
  done 
done

for app in "${apps[@]}"; do 
  sudo apt-get remove -y "$app"
done 

sudo apt-get autoremove -y 
