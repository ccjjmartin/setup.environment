# Load the shell dotfiles, and then some:
for file in ~/public/setup.environment/sourced\_files/.{paths,bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

source ~/public/setup.environment/SAVE_ME_DONT_DELETE/.extra

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

[ -f /usr/local/homebrew/etc/bash_completion ] && . /usr/local/homebrew/etc/bash_completion
source "$HOME/.console/console.rc" 2>/dev/null

export PATH="$PATH:/Applications/DevDesktop/tools"
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
