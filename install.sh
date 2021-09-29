#!/bin/zsh
emulate -LR zsh

# This script will Stow all the dotfiles located in the ~/.dotfiles folder.
echo "Stowing Dotfiles.";

for file in ~/.dotfiles/*; do
  if [ -d ${file} ]; then
    stow  $(basename $file)
    echo "$(basename $file) stowed."; 
  fi
done

echo 'Success';
