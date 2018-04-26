#!/bin/sh
#
# This installs nvm if not already present.

if test ! $(which nvm)
then
	echo "  Installing nvm for you."

	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

fi

exit 0
