#!/bin/sh
# Create configuration files for Sublime Text 3

sublime_dir=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

# symlink an "st" command to open files in Sublime Text from the command line.
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/st

if [ -d "$sublime_dir" ]; then
	echo -e "Sublime Text 3 /User folder already exists."
else
	echo -e "Creating Sublime Text 3 /User folder."

	mkdir -p "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
fi

# symlink user settings
for file in $DOTFILES/sublime/User/*
do
	echo -e "Symlinking $file."
	ln -sf "$file" "$sublime_dir"
done
