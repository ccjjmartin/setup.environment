Setup phpcs
-----------
- `pear install PHP_CodeSniffer` (it might be possible this isn't needed)
- `composer global require drupal/coder`
- `phpcs --config-set installed_paths ~/.composer/vendor/drupal/coder/coder_sniffer`
