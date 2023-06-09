#!/usr/bin/env bash

mkdir -p "$HOME/dotfiles-local"

# It is relevant to keep the trailing slash in the source path to
# avoid creating an additional directory level at the destination.
#
# The --archive option ensures that symbolic links, devices, attributes,
# permissions, ownerships, etc. are preserved in the transfer. It will
# also copy recursively.
rsync --verbose --archive --human-readable --progress "$PWD/customizations/dotfiles-local/" "$HOME/dotfiles-local"

# Just some debug info
tree "$HOME/dotfiles-local"