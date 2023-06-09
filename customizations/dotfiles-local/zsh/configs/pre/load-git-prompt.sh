git_prompt_file="$(brew --prefix git)/etc/bash_completion.d/git-prompt.sh"

# shellcheck disable=SC1090
[[ -f "$git_prompt_file" ]] && source "$git_prompt_file"