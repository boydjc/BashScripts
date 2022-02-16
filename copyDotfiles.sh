#!/bin/bash
# This scripts copies all configuration files
# to ~/dotfiles so that they can be uploaded
# to Github and backed-up

dotfileDir=~/dotfiles/

# the original paths to all tracked files
trackedDotfilePaths=(~/.config/picom.conf
					 ~/.config/i3
					 ~/.config/i3status
					 ~/.Xresources
					 ~/.xscreensaver
					 ~/.bashrc
					 ~/.bash_profile
					 ~/.vim
					 /etc/issue)

for path in ${trackedDotfilePaths[@]}; do
	echo "Copying ${path} to ${dotfileDir}"
	cp -r $path $dotfileDir
done

echo "Done"
