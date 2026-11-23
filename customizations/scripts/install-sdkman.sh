#!/usr/bin/env bash

# Installing without Modifying Shell Config.
curl -s "https://get.sdkman.io" | zsh

# Load it in the current shell to validate it was installed
# shellcheck disable=SC1091
source "$HOME/.sdkman/bin/sdkman-init.sh"

# To debug the installation
sdk version

# Install some Temurin versions.
# * There is a `grep -v sdk` because sdkman's example uses Temurin.
# * `| xargs` removes whitespaces from the string (which sdkman does not handle well)
latest_jdk=$(sdk list java | grep "\-tem" | grep -v sdk | awk -F"|" '{ print $4 }' | sort -V | tail -1 | xargs)
latest_jdk21=$(sdk list java | grep "21.*-tem" | grep -v sdk | awk -F"|" '{ print $4 }' | sort -V | tail -1 | xargs)

sdk install java "${latest_jdk}"
sdk install java "${latest_jdk21}"

# Install latest versions of build tools
sdk install maven
sdk install gradle

# Install latest version of visualvm
sdk install visualvm
