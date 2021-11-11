# Load node first to prevent yarn issue on startup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Load the shell dotfiles, and then some:
for file in ~/public/setup.environment/sourced\_files/.{aliases, exports}; do
  [ -r "$file" ] && source "$file"
done
unset file

export PATH="$PATH:/Applications/DevDesktop/tools"
