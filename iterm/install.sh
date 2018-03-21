#!/bin/sh
# Load custom preferences from dotfiles.

echo -e "Telling iTerm to use custom preferences from dotfiles."

# Specify the preferences directory.
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$DOTFILES/iterm"

# Tell iTerm to use the custom preferences.
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
