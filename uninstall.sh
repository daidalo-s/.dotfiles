#!/bin/zsh
emulate -LR zsh

# This script will unStow all the dotfiles located in the ~/.dotfiles folder.
echo "Unstowing Dotfiles.";

for file in ~/.dotfiles/*; do
  if [ -d ${file} ]; then
    stow  -D $(basename $file)
    echo "$(basename $file) unstowed."; 
  fi
done

echo 'Success';
