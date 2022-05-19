#!/bin/sh
# Create configuration files for Sublime Text 3

sublime_dir=~/Library/Application\ Support/Sublime\ Text\ 3
user_settings_dir=$sublime_dir/Packages/User
packages_dir=$sublime_dir/Installed\ Packages

if [ -d "$sublime_dir" ]; then
	echo -e "Sublime Text 3 /User folder already exists."
else
	echo -e "Creating Sublime Text 3 /User folder."

	mkdir -p "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
fi

# symlink user settings
for file in $DOTFILES/sublime/User/*
do
	echo -e "Symlinking user settings file $file."
	ln -sf "$file" "$user_settings_dir"
done

# symlink packages
for file in $DOTFILES/sublime/Packages/*
do
	echo -e "Symlinking package $file."
	ln -sf "$file" "$packages_dir"
done
