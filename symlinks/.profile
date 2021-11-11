# Load the shell dotfiles, and then some:
for file in ~/public/setup.environment/sourced\_files/.{paths,bashrc,bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

source ~/public/setup.environment/SAVE_ME_DONT_DELETE/.extra

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Use zsh (must be placed last in .profile)
[ -f /usr/local/bin/zsh ] && exec /usr/local/bin/zsh -l

[ -f /usr/local/homebrew/etc/bash_completion ] && . /usr/local/homebrew/etc/bash_completion
source "$HOME/.console/console.rc" 2>/dev/null

export PATH="$PATH:/Applications/DevDesktop/tools"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
