# .dotfiles
Inside this repo I have collected all the confing files I have created while getting used to working inside the terminal.
All the configuration is done through the `stow` command and symlinks.
I have also included the `.oh-my-zsh` folder since I tried to symlink all the rigth files in the rigth place but i couldn't get it to work. Maybe in the future i'll figure it out (actually I also dont know if the oh my zsh updates will work but we'll see lol).
I'll add some screenshots when i have some time.

## Installation
As mentioned before, all the installation is done through the `stow` command and symlinks. I have prepared two simple zsh scripts, `install.sh` and `uninstall.sh` in order to automate all the stowing/unstowing procedure.
The steps for installation are really simple
1. Clone this repo inside your home folder (the path has to be like `~/.dotfiles`)
2. Install oh my zsh as you would do normally
3. Use the `install.sh` script in order to stow all the folders inside the repo or manually stow the ones you are interested in by using the command `stow foldername` (Note: the script will fail if inside the home directory you have already a file with the same name, delete it and launch again the script/command)
4. Enjoy

## Known Problems
As of now i'm unable to correctly stow my custom theme inside the oh my zsh theme folder. In order to silence errors
1. Inside your home folder, locate the .oh-my-zsh folder that gets stowed by the installation script, enter and copy the custom.zsh-theme file
2. Delete the stowed .oh-my-zsh folder
3. Inside the "regular" (i mean the one that gets installed from the oh my zsh git repo) oh my zsh folder, enter themes and paste the theme file
4. Install remaining plugins 
