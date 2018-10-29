Installing drush
----------------
[http://docs.drush.org/en/master/install/](http://docs.drush.org/en/master/install/)
[https://github.com/drush-ops/drush](https://github.com/drush-ops/drush)
[https://www.lullabot.com/articles/switching-drush-versions](https://www.lullabot.com/articles/switching-drush-versions)

### Install drush 9.x:
> **NOTE** - As of Drupal 8.4 `drush` only functions as a dependancy module within individual Drupal projects. Similarly, `drush/drush:8.*` only has limited functionality and support.
- Install [Drush Launcher](https://github.com/drush-ops/drush-launcher)
  - This ensures the `drush` command is available globally, not just within individual Drupal docroots.
  - The Drush Launcher uses the `drush` command, by default, globally.
- `cd ~/some-drupal-docroot`
- `composer require "drush/drush:9.*"`

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
