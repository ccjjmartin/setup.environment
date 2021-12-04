Setup environment
=================

Introduction
------------
Environment setup is something that if you don't do right the first time around
it will come back to haunt you because you will spend a lot of time fighting
with your tools instead of your tools helping you.  Also, installing tools with
`sudo` can result in you having to use that tool with `sudo` for every command.
When downloading things like node modules off the internet this could be a very
bad idea.  So don't use `sudo` unless it is specifically listed.

How to use
----------
If you are wondering how to use this guide.  You need to know that all of our
documentation is stored in the instructions directory.  From there you should
pick your os and follow the setup instructions.  Once the setup instructions are
complete you should be able to then find additional tools useful for certain
kinds of development.  See the kinds-of-development section.

Setting up this repository
--------------------------
- This repository is meant to be used as a backup and quick transfer of my local environment setup.  If you wish to use my shell configuration you can follow the steps below.
- `mkdir ~/Public`
- `cd ~/Public`
- `git clone git@github.com:ccjjmartin/setup.environment.git`
- NOTE: If you see "Permission Denied (publickey)" this means that you need to
setup your publickey on GitHub or use the https version of the url.
- `cd setup.environment`
- `./scripts/git-config.sh`
- `./scripts/setup-symlinks`
- Run scripts/setup-symlinks.sh to setup home_directory files

Assumed File Structure
----------------------
- `mkdir ~/repos` (git clone here)
- `mkdir ~/lando` (lando repos here)
- `mkdir ~/patches` (contrib patches here)
- `mkdir ~/sql` (.sql files here - exclude from backups)

Linux
-----

PHP will probably be missing xmlrpc:
- `sudo apt-get install php-xmlrpc php-mbstring`
- `sudo phpenmod xmlrpc mbstring`
- `phpcs --config-set installed_paths /home/{user}/vendor/drupal/coder/coder_sniffer`
