#!/bin/sh
#
# ZSH
#

# Install ZSH.
if test ! $(which brew)
then
	echo -e "Installing ZSH."

	brew install zsh
else
	echo -e "ZSH is already installed, skipping..."
fi

# Ensure that ZSH is a valid shell in the eyes of the system.
if grep -q "/usr/local/bin/zsh" /etc/shells; then
	echo -e "ZSH is already a valid shell, skipping..."
else
	echo -e "Adding ZSH to /etc/shells."

	sudo bash -c 'echo "/usr/local/bin/zsh" >> /etc/shells'
fi

if [ $SHELL = "/bin/zsh" ]; then
	echo -e "ZSH is already the default shell, skipping..."
else
	echo -e "Making ZSH the default shell."

	chsh -s /usr/local/bin/zsh
fi

# Install oh-my-zsh if necessary.
if [ -d $ZSH ]; then
	echo -e "$ZSH folder already exists, skipping install of oh-my-zsh..."
else
	echo -e "Installing oh-my-zsh."

	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Install autosuggestions for ZSH if necessary.
if [ -d "$ZSH/custom/plugins/zsh-autosuggestions" ]; then
	echo -e "zsh-suggestions already installed, skipping..."
else
	echo -e "Installing zsh-suggestions."

	git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH/custom/plugins/zsh-autosuggestions
fi

exit 0
