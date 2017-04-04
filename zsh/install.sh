#!/bin/sh
#
# ZSH Autosuggestions
#
# This installs autosuggestions for ZSH.

if [ -d "$ZSH/custom/plugins/zsh-autosuggestions" ]; then
		echo -e "zsh-suggestions already installed, skipping..."
	else
		echo -e "Installing zsh-suggestions."

		# clone the autosuggestions repository if it doesn't already exist
		git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH/custom/plugins/zsh-autosuggestions

fi

exit 0
