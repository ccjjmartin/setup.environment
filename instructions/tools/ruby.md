RVM
====

NOTE: Ruby was used in frontend development compiling in the past but now is not
the recommended way to compile you frontend development tools.  Please do not
use compass on any new projects.

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
