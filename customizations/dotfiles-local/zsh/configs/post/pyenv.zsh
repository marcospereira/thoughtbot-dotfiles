# Loads pyenv if it is installed
if (( $+commands[pyenv] ))
then
  eval "$(pyenv init -)"
fi
