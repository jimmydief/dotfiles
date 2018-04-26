#!/bin/sh
#
# This installs n if not already present.

if test ! $(which n)
then
	echo "  Installing n for you."

	# install it
	brew install n

	# create the required directory and make me owner
	echo "  Creating directory required by n, may require system password..."
	sudo mkdir /usr/local/n
	sudo chown -R $(whoami) /usr/local/n

	# install the default node version
	echo "  Installing the latest Node version..."
	n latest

fi

exit 0
