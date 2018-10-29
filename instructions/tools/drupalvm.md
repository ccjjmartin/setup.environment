Virtual Machines - DrupalVM
===========================

NOTE: This is no longer my preferred method of development.  I now have switched
to docker and recommend the same for other developers.

Requirements
------------
- `brew cask install virtualbox`
- `brew cask install vagrant`
- `brew install ansible`

DrupalVM
--------
- `cd ~/vms/`
- `git clone git@github.com:geerlingguy/drupal-vm.git`
- For existing machines get the exiting config.yml and drop it into the new
directory.
- For new machines copy the example.config.yml to config.yml and configure.
