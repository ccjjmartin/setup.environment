# Load the shell dotfiles, and then some:
for file in ~/repos/setup.environment/sourced_files/.{paths,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file
