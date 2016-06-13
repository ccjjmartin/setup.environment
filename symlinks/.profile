# Load the shell dotfiles, and then some:
for file in ~/repos/setup.environment/sourced_files/.{paths,bashrc,bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

source ~/repos/setup.environment/SAVE_ME_DONT_DELETE/.extra

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
