#!/usr/bin/env bash

# Get the latest NVM version
latest_nvm_release="$(curl -s https://api.github.com/repos/nvm-sh/nvm/releases/latest | jq -r '.tag_name')"

# From NVM docs: https://github.com/nvm-sh/nvm#additional-notes
# You can instruct the installer to not edit your shell config (for example if you already
# get completions via a zsh nvm plugin) by setting PROFILE=/dev/null before running the install.sh
PROFILE=/dev/null bash -c "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$latest_nvm_release/install.sh | bash"

# This loads nvm so that we can
NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Installs the latest lts as the default node
nvm install --lts --default
