
# Destroy current symlinks.
for file in ~/{.gitconfig,.profile,.bash_profile,.bashrc,.eslintrc,.gitignore_global,.zshrc,composer.json,bin/stree}; do
  # If file exists.
  if [ -e $file ]
  then
    # Then test if it is a symlink and remove it if true else alert the user
    # and don't delete the file.
    test -h $file && rm $file || echo "$file is not symlink will not delete it";
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
ln -s /Applications/SourceTree.app/Contents/Resources/stree ~/bin/
