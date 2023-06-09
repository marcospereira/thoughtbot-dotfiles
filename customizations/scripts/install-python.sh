#!/usr/bin/env bash

brew install python
brew install pyenv

pyenv --version

# List all the versions
# Grep only the main Python releases
# Sort by semver
# Get the latest (`| xargs` trims the output)
# This is not perfect, but it is good enough. :-)
latest_version=$(pyenv install --list | grep -E "^\s*[0-9]\.[0-9]+\.[0-9]+$" | sort -V | tail -n 1 | xargs)
pyenv install "${latest_version}"

# Loads pyenv for the current shell session
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Then use the latest installed version as the global
pyenv global "${latest_version}"

# Install Poetry (a tool for dep management in Python)
# See https://python-poetry.org/docs/master/#installing-with-the-official-installer
curl -sSL https://install.python-poetry.org | python3 -
