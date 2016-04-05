#!/bin/sh
#
# Autojump
#
# This installs the Autojump plugin.

# Check for Autojump
if test ! $(which autojump)
then
  echo "  Installing Autojump for you."

  # Install it using Homebrew
  brew install autojump

fi

exit 0
