# Test for proper install directory
if test -d ~/repos/setup.environment; then
  echo "You cloned this repo to the right directory, great job!"
else
  echo "The install script is only made to work when this repo is cloned into the ~/repos directory"
  exit 1
fi

# Test for backup directory
if test -d ~/repos/setup.environment/backups; then
  echo "Backup directory exists, continuing"
else
  echo "Making the backups directory"
  mkdir ~/repos/setup.environment/backups
fi

# Destroy current symlinks.
for file in ~/{.gitconfig,.profile,.bash_profile,.bashrc,.eslintrc,.gitignore_global,.zshrc,composer.json,bin/stree}; do
  # If file exists.
  if [ -e $file ]
  then
    # Then test if it is a symlink and remove it if true else alert the user
    # and don't delete the file.
    test -h $file && rm $file || echo "$file is not symlink will not delete it";
    echo "$file is moving to ~/repos/setup.environment/backups directory"
    mv ~/$file ~/repos/setup.environment/backups/$file
fi
done
unset file

# Create symbolic links in your home directory
ln -s ~/repos/setup.environment/SAVE_ME_DONT_DELETE/.gitconfig ~/.gitconfig
ln -s ~/repos/setup.environment/symlinks/.bash_profile ~/.bash_profile
ln -s ~/repos/setup.environment/symlinks/.bashrc ~/.bashrc
ln -s ~/repos/setup.environment/symlinks/.eslintrc ~/.eslintrc
ln -s ~/repos/setup.environment/symlinks/.gitignore_global ~/.gitignore_global
ln -s ~/repos/setup.environment/symlinks/.profile ~/.profile
ln -s ~/repos/setup.environment/symlinks/.zshrc.oh-my-zsh ~/.zshrc
ln -s ~/repos/setup.environment/symlinks/composer.json ~/composer.json

# Symbolic links for commands
if test -d ~/bin/; then
  test -h ~/bin/stree && echo "stree cmd exists" || ln -s /Applications/SourceTree.app/Contents/Resources/stree ~/bin/;
else
  mkdir ~/bin
  test -h ~/bin/stree && echo "stree cmd exists" || ln -s /Applications/SourceTree.app/Contents/Resources/stree ~/bin/;
fi

echo "Completed install"
