#!/bin/sh
#
# This installs n if not already present.

set -ex

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
	sudo n latest

fi

exit 0
