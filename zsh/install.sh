#!/bin/sh
#
# ZSH
#

# Install ZSH.
if test ! $(which zsh)
then
	echo -e "Installing ZSH."

	brew install zsh
else
	echo -e "ZSH is already installed, skipping..."
fi

ZSH=$(which zsh)

# Ensure that ZSH is a valid shell in the eyes of the system.
if grep -q $ZSH /etc/shells; then
	echo -e "ZSH is already a valid shell, skipping..."
else
	echo -e "Adding ZSH to /etc/shells."

	sudo bash -c 'echo "$ZSH" >> /etc/shells'
fi

if [ $SHELL = $ZSH ]; then
	echo -e "ZSH is already the default shell, skipping..."
else
	echo -e "Making ZSH the default shell."

	chsh -s $ZSH
fi

OH_MY_ZSH=$HOME/.oh-my-zsh

# Install oh-my-zsh if necessary.
if [ -d $OH_MY_ZSH ]; then
	echo -e "$OH_MY_ZSH folder already exists, skipping install of oh-my-zsh..."
else
	echo -e "Installing oh-my-zsh."

	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Install autosuggestions for oh-my-zsh if necessary.
if [ -d "$OH_MY_ZSH/custom/plugins/zsh-autosuggestions" ]; then
	echo -e "zsh-suggestions already installed, skipping..."
else
	echo -e "Installing zsh-suggestions."

	git clone git://github.com/zsh-users/zsh-autosuggestions $OH_MY_ZSH/custom/plugins/zsh-autosuggestions
fi

# Install the Autojump plugin if necessary.
if [ $(which autojump) ]; then
		echo -e "autojump already installed, skipping..."
	else
		echo "Installing autojump..."

		# Install it using Homebrew
		brew install autojump
fi

exit 0


exit 0
