# Loads poetry if it is installed
poetry_executable_dir="$HOME/.local/bin"
[ -s "$poetry_executable_dir" ] && export PATH="$poetry_executable_dir:$PATH"
