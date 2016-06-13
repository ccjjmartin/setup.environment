Setup environment
=================

Introduction
------------

Environment setup is something that if you don't do right the first time around
it will come back to haunt you because you will spend a lot of time fighting
with your tools instead of your tools helping you.  Also, installing tools with
`sudo` can result in you having to use that tool with `sudo` for every command.
When downloading things like node modules off the internet this could be a very
bad idea.  So don't use `sudo` unless it is specifically listed used below.

User setup
----------
- Create a new user named `developer` as an administrator, when install is
complete you can optionally remove administrator access
- Do any icloud, email, calendar, or contacts setup as necessary

OS Setup
--------
- Check for system updates Apple Icon > Software Update

System Preferences (El Capitan)
-------------------------------
- Sharing > Computer Name > Type your desired name
- Trackpad > Point and Click > Tap to click
- Trackpad > Point and Click > Silent clicking > On
- Keyboard > Key Repeat > Fast
- Keyboard > Delay Until Repeat > Short
- Keyboard > Modifier Keys ... > Caps Lock Key > No action (used as hyperkey)
- Accessibility > Mouse and Trackpad > Trackpad Options ... > Enable Dragging >
three finger drag
- Mouse > Tracking speed > Fast
- Mouse > Scrolling speed > Moderate
- Energy Saver > Power Adapter > Turn off display after 1 hour
- Energy Saver > Power Adapter > Prevent computer from sleeping automatically
- Mission Control > Mission Control > Second Drop Down > Middle Mouse Button
- Mission Control > Group Windows By Application > On

Turn on FileVault
--------------------
- Open system preferences
- Go to security
- Go to FileVault
- Turn it on
- Enable boot login accounts
- Restart your computer
- Continue the install process while this runs in the background

Manual Download Applications
----------------------------
- Slack (App store)
- Komodo Edit (http://komodoide.com/download/edit-osx/#)
- Atom (https://atom.io/)
- Sublime (@todo)
- Install SourceTree (https://www.sourcetreeapp.com/download/)

Pre Install Configuration
-------------------------
- Setup SSH Key
- Setup SSH Key on GitHub
- Setup SSH Key on Pantheon
- Setup SSH Key on Acquia
- Run scripts/pre-install.sh to setup home_directory files

Setup Time Machine
------------------
- If you have an external drive, network drive, or Apple server hosting time
machine.  Go ahead and set this up now.
- Optionally, if you wait for FileVault and Time Machine to complete you will
have a fresh install available at this point to restore to if needed.

Carbon Copy Clone
-----------------
- Optionally, setup a carbon copy clone at this point so you will have a fresh
install to restore to.

Install Tools
=============

Setup homebrew
--------------
Installation.md: [https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Installation.md](https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Installation.md)

### Install homebrew:
- `sudo chown -R $(whoami):admin /usr/local`
- `cd /usr/local`
- `mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew`
- `export PATH=$PATH:/usr/local/homebrew/bin`

### Install git:
- `brew update`
- `brew install git` (git)

### Install php:
- `brew tap homebrew/dupes`
- `brew tap homebrew/versions`
- `brew tap homebrew/php`
- `brew install PHP56 --with-pear`

### Install composer:
- `brew install composer`

### Install zsh:
- `brew install zsh` (this should be last to prevent weird errors)

### Install DrupalVM related tools:
- `brew cask install virtualbox`
- `brew cask install vagrant`
- `brew install ansible`

### Optional - Consolas font:
- `brew install cabextract`
- `cd ~/Downloads`
- `mkdir consolas`
- `cd consolas`
- `curl -O http://download.microsoft.com/download/f/5/a/f5a3df76-d856-4a61-a6bd-722f52a5be26/PowerPointViewer.exe`
- `cabextract PowerPointViewer.exe`
- `cabextract ppviewer.cab`
- `open CONSOLA*.TTF`

iTerm2
------
- Download iTerm2 (https://iterm2.com/downloads/stable/iTerm2-2_1_4.zip)
- Move the unarchived app to your Applications/Utilities directory
- Open the app
- Open preferences
- Uncheck confirm "closing multiple sessions"
- Uncheck confirm "Quit iTerm2 (Cmd+Q)"
- Change fonts to Consolas 14pt font

Nano
----
- Take 5 minutes to learn the nano text editor and save yourself the hassle of
learning vim

VIM
---
- Learn how to get out of vim use the following:
- `:q`

Solarized Color Scheme
----------------------
- Download the theme: http://ethanschoonover.com/solarized/files/solarized.zip
- In iTerm2 Preferences, under Profiles and Colors, go to Load Presets... >
Import..., find and open the two .itermcolors files we downloaded.
- Go back to Load Presets... and select Solarized Dark to activate it.
- Additional info here: http://ethanschoonover.com/solarized

Installing drush
----------------
[http://docs.drush.org/en/master/install/](http://docs.drush.org/en/master/install/)
[https://github.com/drush-ops/drush](https://github.com/drush-ops/drush)
[https://www.lullabot.com/articles/switching-drush-versions](https://www.lullabot.com/articles/switching-drush-versions)

### Install drush 8.x:
- `mkdir ~/drush8`
- `cd ~/drush8`
- `composer require "drush/drush:8.*"`

### Install drush 7.x:
- `mkdir ~/drush7`
- `cd ~/drush7`
- `composer require "drush/drush:7.*"`

### Create aliases:
- `alias drush7='~/drush7/vendor/bin/drush'`
- `alias drush8='~/drush8/vendor/bin/drush'`

### Test:
- `drush7 --version`
- `drush8 --version`

Setup Git
---------
This is how your commits will be stored.
- git config --global user.email "name@example.com"
- git config --global user.name "Firstname Lastname"

File Structure
--------------
- `mkdir ~/repos` (git clone here)
- `mkdir ~/vms` (Vagrantfile here)
- `mkdir ~/patches` (contrib patches here)
- `mkdir ~/sql` (.sql files here - exclude from backups)
- `mkdir ~/VirtualBox\ VMs` (Virtual Machines Here - exclude from backups)

Virtual Machines
================

DrupalVM
--------
- `cd ~/vms/`
- `git clone git@github.com:geerlingguy/drupal-vm.git`
- For existing machines get the exiting config.yml and drop it into the new
directory.
- For new machines copy the example.config.yml to config.yml and configure.

Hosts
=====

Setup terminus for Pantheon
---------------------------
- `composer require pantheon-systems/terminus`
- Log in and setup machine tokens

Code Linting
============

Setup phpcs
-----------
- `pear install PHP_CodeSniffer` (it might be possible this isn't needed)
- `composer global require drupal/coder`
- `phpcs --config-set installed_paths ~/.composer/vendor/drupal/coder/coder_sniffer`

JS linting with eslint
----------------------
- `npm install -g eslint eslint-plugin-import eslint-config-airbnb-base`

Code Editing
============

Atom
----
- Good for reviewing file history with git-time-machine
- Good for GitHub.com markdown previewing
- Good for code linting

Atom Packages
-------------
- For any of the packages below you can type `apm install {package_name}`:
- autocomplete-php (add autocomplete php support)
- git-time-machine (History of a particular file)
- linter (a tool for code linting)
- linter-phpcs (a PHP language specific linter)
- linter-eslint (a JS language specific linter)
- minimap (preview of your file's entire source code)
- minimap-linter (a preview of code linting)
- term3 (command line shell within Atom)

Atom Settings
-------------
- To change the settings below open menu item Atom > Preferences > Packages
- mardown-preview > "Use GitHub.com style" > checked
- autocomplete-plus > Keymap For Confirming a Suggestion > "tab" only.
- bracket-matcher > autocomplete smart quotes > unchecked
- linter-phpcs > Code Standards or Config File > "Drupal"
- NOTE: The linter does not run on file open, start typing or save the file.

Atom Command Line
-----------------
- On my install it looks like the atom command was possible out of the box
although it is possible that one of the packages above created the command:
- `atom`
- `atom .` will open the current directory in atom.
- You can check your `/usr/local/bin` directory for a symlink called atom
- If it isn't there run:
- `ln -s /Applications/Atom.app/Contents/Resources/app/atom.sh /usr/local/bin/atom`

RVM
====

Setup RVM
---------
- `curl -L https://get.rvm.io | bash -s stable --ruby`
- This will add the following line to your .profile file:
- `[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*`
- This is unnecessary if you are using the dotfiles included in this repository.

Setup bundler
-------------
- `gem install bundler`
- You should use bundler on your projects to manage gem dependencies like
compass.
- This simplifies your life to one line for ruby packages:
- `bundle install`

Node
====

NVM
----
- `curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash`
- `npm install gulp -g`
- `npm install grunt -g`

SQL
====

Setup SequelPro
---------------
- Get your favorites from ~/Library/Application\ Support/SequelPro/Data/Favories.xml
- @TODO Verify Above Path and add download link


Post Install Process
====================

Security
--------
- Optionally, remove administrator access (this is for people very concerned
about security)

Carbon Copy Clone
-----------------
- Optionally, run carbon copy clone at this point so you will have a fresh
install to restore to.


Author's Picks
==============

Hyperkey
--------
- http://brettterpstra.com/2013/01/26/a-guided-tour-of-my-hyper-key-shortcuts/

Slate window manager
--------------------
- https://github.com/jigish/slate
- NOTE: This project is no longer maintained.  As such I am looking for a
suitable replacement that offers this much flexibility.

Install Menu Meters
-------------------
- http://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/

SMC Fan Control
---------------
- You only have to have one mac melt on you before you install this on every
computer.
- http://www.macupdate.com/app/mac/23049/smcfancontrol/download

Postman
-------
- Download chrome app

Markdown Viewing
----------------
- `brew cask install macdown`

Other
----------------------------
- Drag your /Applications/Utilities folder to the dock (on the side near the
trash)
