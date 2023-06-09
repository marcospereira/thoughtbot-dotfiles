# Loads pyenv if it is installed
if (( $+commands[direnv] ))
then
  eval "$(direnv hook zsh)"
fi
