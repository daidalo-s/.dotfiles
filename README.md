# .dotfiles
Inside this repo I have collected all the confing files I have created while getting used to working inside the terminal.
All the configuration is done through the `stow` command and symlinks.
I have also included the `.oh-my-zsh` folder since I tried to symlink all the rigth files in the rigth place but i couldn't get it to work. Maybe in the future i'll figure it out (actually I also dont know if the oh my zsh updates will work but we'll see lol).
I'll add some screenshots when i have some time.

## Installation
As mentioned before, all the installation is done through the `stow` command and symlinks. I have prepared two simple zsh scripts, `install.sh` and `uninstall.sh` in order to automate all the stowing/unstowing procedure.
The steps for installation are really simple
1. Clone this repo inside your home folder (the strucutre has to be like `~/.dotfiles`)
2. Use the `install.sh` script in order to stow all the folders inside the repo or manually stow the ones you are interested in by using the command `stow foldername` (Note: the script will fail if inside the home directory you have already a file with the same name, delete it and launch again the script/command)
3. Enjoy

