User setup
----------
- Create a new user named `developer` as an administrator, when install is
complete you can optionally remove administrator access
- Do any icloud, email, calendar, or contacts setup as necessary

OS Setup
--------
- Check for system updates System Preferences > Software Update

System Preferences (Monterey)
-----------------------------
- Sharing > Computer Name > Type your desired name (be creative you can do it, naming things is hard)
- Trackpad > Point and Click > Enable all your favorite trackpad preferences
- Keyboard > Key Repeat > Fast
- Keyboard > Delay Until Repeat > Short
- Keyboard > Modifier Keys ... > Caps Lock Key > No action (if used as hyperkey)
- Accessibility > Mouse and Trackpad > Trackpad Options ... > Enable Dragging >
three finger drag
- Mouse > Tracking speed > Fast
- Mouse > Scrolling speed > Moderate
- Energy Saver > Power Adapter > Adjust power settings to match your preferences
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
- System color picker (App store) - The free one
- Slack (App store)
- VSCode

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

### Removed PHP setup as it needs new specific instructions

Nano
----
- Take 5 minutes to learn the nano text editor and save yourself the hassle of
learning vim

VIM
---
- Learn how to get out of vim use the following:
- `:q`

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
