Pantheon
========

Terminus
--------
 - Via  curl: `curl -O https://raw.githubusercontent.com/pantheon-systems/terminus-installer/master/builds/installer.phar && php installer.phar`
 - Via **Composer**: cd /install/location ; composer require pantheon-systems/terminus
 - Via **cgr**:
 ```bash
 $ composer global require consolidation/cgr
 $ cgr pantheon-systems/terminus
 $ echo 'export PATH=~/.composer/vendor/bin:$PATH' >> ~/.bashrc (or other shell resource file such as ~/.zshrc)
 $ source ~/.bashrc (or other shell resource file such as ~/.zshrc)
 ```

I recommend installing via Composer, as managing versions of Terminus is controlled via `composer update` instead of manually uninstalling and reinstalling.  You can also update via `cgr update` as well.
