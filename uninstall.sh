#!/bin/zsh
emulate -LR zsh

# List of directories to be unstowed from ~/.config
config_dirs=("nvim")

echo "Unstowing Dotfiles.";

for file in ~/.dotfiles/*; do
  if [ -d ${file} ]; then
    dir_name=$(basename $file)
    if [[ " ${config_dirs[@]} " =~ " ${dir_name} " ]]; then
      stow -D -t ~/.config $dir_name
      echo "$dir_name unstowed from ~/.config."; 
    else
      stow -D $dir_name
      echo "$dir_name unstowed from home directory."; 
    fi
  fi
done

echo 'Success';