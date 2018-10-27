# Load the shell dotfiles, and then some:
for file in ~/repos/setup.environment/sourced_files/.{paths,bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

[ -f /usr/local/homebrew/etc/bash_completion ] && . /usr/local/homebrew/etc/bash_completion
source "$HOME/.console/console.rc" 2>/dev/null
