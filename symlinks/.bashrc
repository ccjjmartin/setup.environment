# Load the shell dotfiles, and then some:
for file in ~/repos/setup.environment/sourced_files/.{aliases, exports}; do
  [ -r "$file" ] && source "$file"
done
unset file

# export PATH="$HOME/.yarn/bin:$PATH"

export PATH="$PATH:/Applications/DevDesktop/tools"
