# Loads pyenv if it is installed
if (( $+commands[rbenv] ))
then
  eval "$(~/.rbenv/bin/rbenv init - zsh)"
fi
