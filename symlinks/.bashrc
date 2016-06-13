# Load the shell dotfiles, and then some:
for file in ~/repos/setup.environment/sourced_files/.{paths,bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file
