#!/bin/zsh
emulate -LR zsh

# List of directories to be stowed inside ~/.config
# Add other "folders" without comma's
config_dirs=("nvim")

echo "Stowing Dotfiles.";

for file in ~/.dotfiles/*; do
  if [ -d ${file} ]; then
    dir_name=$(basename $file)
    if [[ " ${config_dirs[@]} " =~ " ${dir_name} " ]]; then
      stow --adopt -t ~/.config $dir_name
      echo "$dir_name stowed into ~/.config."; 
    else
      stow $dir_name
      echo "$dir_name stowed into home directory."; 
    fi
  fi
done

echo 'Success';