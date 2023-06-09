#!/usr/bin/env bash

# Install brew if it is not there.
if ! command -v brew &> /dev/null
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Run update anyway so that we can have the most recent version
# of installed libs/apps
brew update
brew doctor
brew tap homebrew/cask
