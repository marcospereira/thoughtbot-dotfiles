#!/usr/bin/env bash

brew install libxslt libxml2
brew install rbenv ruby-build

eval "$(rbenv init - zsh)"

# Install latest ruby version
latest_ruby=$(rbenv install -l | grep -v - | sort -V | tail -1 | xargs)
rbenv install "$latest_ruby"