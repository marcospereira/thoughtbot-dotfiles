# Loads rbenv if it is installed
if (( $+commands[rbenv] ))
then
  eval "$(rbenv init - zsh)"
fi
