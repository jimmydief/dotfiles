#!/bin/sh
#
# Autojump
#
# This installs the Autojump plugin.

# Check for Autojump
if [ $(which autojump) ]; then
		echo -e "autojump already installed, skipping..."
	else
		echo "Installing autojump..."

		# Install it using Homebrew
		brew install autojump

fi

exit 0
