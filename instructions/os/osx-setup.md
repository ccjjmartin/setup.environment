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

Xcode
-----
- You have two options for installing xcode.  The full package or just the
command line tools but at a minimum the command line tools are required.
- Install just the xcode command line tools with:
- `xcode-select --install` -or-
- Go to the app store and download the full package.  The full package is
great for if you do any sort of mobile development.

Manual Download Applications
----------------------------
- Google Chrome (https://www.google.com/intl/en/chrome/browser/)
- Firefox (https://www.mozilla.org/en-US/firefox/new/)
- Color picker (App store) - The free one
- Slack (App store)
- Atom (https://atom.io/)
- Sublime (@todo)
- Install SourceTree (https://www.sourcetreeapp.com/download/) - Register a new
account.  It's free.

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

Setup homebrew
--------------
Installation.md: [https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Installation.md](https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Installation.md)

### Install homebrew:
- `sudo chown -R $(whoami):admin /usr/local`
- `cd /usr/local`
- `mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew`
- `export PATH=$PATH:/usr/local/homebrew/bin`

### Removed PHP setup as it needs new 7.2 specific instructions

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

Consolas font
-------------
- `brew install cabextract`
- `cd ~/Downloads`
- `mkdir consolas`
- `cd consolas`
- `curl -O http://download.microsoft.com/download/f/5/a/f5a3df76-d856-4a61-a6bd-722f52a5be26/PowerPointViewer.exe`
- `cabextract PowerPointViewer.exe`
- `cabextract ppviewer.cab`
- `open CONSOLA*.TTF`

Solarized Color Scheme
----------------------
- Download the theme: http://ethanschoonover.com/solarized/files/solarized.zip
- In iTerm2 Preferences, under Profiles and Colors, go to Load Presets... >
Import..., find and open the two .itermcolors files we downloaded.
- Go back to Load Presets... and select Solarized Dark to activate it.
- Additional info here: http://ethanschoonover.com/solarized

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
- Download for mac version

Other
----------------------------
- Drag your /Applications/Utilities folder to the dock (on the side near the
trash)

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
