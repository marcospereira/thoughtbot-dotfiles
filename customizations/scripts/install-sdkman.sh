#!/usr/bin/env bash

# Installing without Modifying Shell Config.
curl -s "https://get.sdkman.io?rcupdate=false" | bash

# Load it in the current shell to validate it was installed
source "$HOME/.sdkman/bin/sdkman-init.sh"

# To debug the installation
sdk version

# Install some Temurin versions.
# * There is a `grep -v sdk` because sdkman's example uses Temurin.
# * `| xargs` removes whitespaces from the string (which sdkman does not handle well)
latest_jdk=$(sdk list java | grep "\-tem" | grep -v sdk | awk -F"|" '{ print $6 }' | sort -V | tail -1 | xargs)
latest_jdk11=$(sdk list java | grep "11.*-tem" | grep -v sdk | awk -F"|" '{ print $6 }' | sort -V | tail -1 | xargs)

sdk install java "${latest_jdk}"
sdk install java "${latest_jdk11}"

# Install latest versions of build tools
sdk install sbt
sdk install maven
sdk install gradle

# Install latest version of Scala
sdk install scala

# Install latest version of visualvm
sdk install visualvm