## So you want to setup DrupalVM on Digital Ocean

## Requirements:
- NOTE: This document assumes basic knowledge of vagrant.
- virtualbox
- ansible
- vagrant
- vagrant plugin "vagrant-digitalocean"
- DrupalVM
- Digital Ocean Account with API Key
- Uninstall `vagrant-hostsupdater` as it doesn't work with this setup.

## Digital Ocean API Key:
- This document assumes that you have setup an API key and will use it as a local environment variable "DIGITAL_OCEAN_TOKEN"

## Install:

**Vagrant Plugin**
- Run `vagrant plugin install vagrant-digitalocean`

**DrupalVM**
- Run `git clone git@github.com:geerlingguy/drupal-vm.git basebox`

**Vagrantfile.local**
- Copy paste this:
```
digital_ocean_token = ENV['DIGITAL_OCEAN_TOKEN'] || 'YOUR ACCESS TOKEN'

Vagrant.configure('2') do |config|
  config.vm.define "droplet1" do |config|
    config.vm.provider :digital_ocean do |provider, override|
      override.ssh.private_key_path = '~/.ssh/id_rsa'
      override.vm.box = 'digital_ocean'
      override.vm.box_url = "https://github.com/devopsgroup-io/vagrant-digitalocean/raw/master/box/digital_ocean.box"
      override.nfs.functional = false
      provider.token = "#{digital_ocean_token}"
      provider.image = 'ubuntu-14-04-x64'
      provider.region = 'nyc1'
      provider.size = '512mb'
    end
  end
end
```
- For further information see the instructions [here](https://github.com/devopsgroup-io/vagrant-digitalocean) for setting up your new `Vagrantfile.local`.

**Edit Vagrantfile**
- Edit your Vagrantfile to include:
```
if drupalvm_env == 'prod'
  # Allow an untracked Vagrantfile to modify the configurations
  [host_config_dir, host_project_dir].uniq.each do |dir|
    eval File.read "#{dir}/Vagrantfile.prod" if File.exist?("#{dir}/Vagrantfile.prod")
  end
  exit
end
```

Right before you see this inclusion of Vagrantfile.local near the bottom of the file:

```
Vagrant.configure('2') do |config|
```

**prod.config.yml**
- Creating your "production" environment (we are using the prod setup because this site will be publicly accessible as opposed to your normal local VM).
- Copy paste the following example config:
```
# Normally, this would be set to the hostname of your DigitalOcean Droplet.
drupal_domain: "your-domain.com"
vagrant_hostname: "{{ drupal_domain }}"

# This fixes a bug in provisioning
apache_vhost_php_fpm_parameters: ""

# A list of synced folders, with the keys 'local_path', 'destination', and
# a 'type' of [nfs|rsync|smb] (leave empty for slow native shares). See
# http://docs.drupalvm.com/en/latest/extras/syncing-folders/ for more info.
vagrant_synced_folders:
  # The first synced folder will be used for the default Drupal installation, if
  # any of the build_* settings are 'true'. By default the folder is set to
  # the drupal-vm folder.
  - local_path: .
    destination: /var/www/drupalvm
    type: rsync
    create: true

# Add only the `apache_vhosts` or `nginx_hosts` you need. If installing a
# single Drupal site, the variable should look like this (Apache):
apache_vhosts:
  - servername: "{{ drupal_domain }}"
    documentroot: "{{ drupal_core_path }}"
    extra_parameters: |
          ProxyPassMatch ^/(.*\.php(/.*)?)$ "fcgi://127.0.0.1:9000{{ drupal_core_path }}"

# Ansible vault handles passwords in secret.yml

# Turn off site building
install_site: false
build_composer_project: false

# Only install extras that you will need/use on your site, and don't install
# development-related software on production environments!
installed_extras:
  - drush
  # - memcached
  # - redis
  # - solr
  - varnish

drush_version: "8.x"

# Disable Apache package upgrades.
apache_packages_state: installed

# Disable the dashboard page. Also remove any unneeded virtualhosts.
dashboard_install_dir: ''

# Enable a more hardened security configuration.
extra_security_enabled: true

# Restrict the firewall to only ports that are required for external services.
firewall_allowed_tcp_ports:
  - "22"
  - "80"
firewall_log_dropped_packets: true

# Set Apache to listen on port 81 (internal only), and Varnish on 80.
apache_listen_port: "81"
varnish_listen_port: "80"
varnish_default_backend_port: "81"

post_provision_scripts: []
  # - "prod/setup-drupal.sh"

# PHP Configuration. Currently-supported versions: 5.5, 5.6, 7.0.
php_version: "5.6"
php_install_recommends: no
php_packages:
  - php5.6
  - php5.6-apcu
  - php5.6-mcrypt
  - php5.6-cli
  - php5.6-common
  - php5.6-curl
  - php5.6-dev
  - php5.6-fpm
  - php5.6-gd
  - php5.6-sqlite3
  - php5.6-xml
  - php5.6-mbstring
  - php-pear
  - libpcre3-dev
php_conf_paths:
  - /etc/php/5.6/fpm
  - /etc/php/5.6/apache2
  - /etc/php/5.6/cli
php_extension_conf_paths:
  - /etc/php/5.6/fpm/conf.d
  - /etc/php/5.6/apache2/conf.d
  - /etc/php/5.6/cli/conf.d
php_fpm_daemon: php5.6-fpm
php_fpm_conf_path: "/etc/php/5.6/fpm"
php_fpm_pool_conf_path: "/etc/php/5.6/fpm/pool.d/www.conf"
php_mysql_package: php5.6-mysql
php_memcached_package: php5.6-memcached

xhprof_download_url: https://github.com/phacility/xhprof/archive/master.tar.gz
xhprof_download_folder_name: xhprof-master

php_memory_limit: "1024M"
# PHP Configuration. Currently-supported versions: 5.6, 7.0.
# To use 5.6, see: http://docs.drupalvm.com/en/latest/other/php-56/
php_display_errors: "On"
php_display_startup_errors: "On"
php_realpath_cache_size: "1024K"
php_sendmail_path: "/opt/mailhog/mhsendmail"
php_opcache_enabled_in_ini: true
php_opcache_memory_consumption: "192"
php_opcache_max_accelerated_files: 4096
php_max_input_vars: "4000"

# Drupal VM defaults to using PHP-FPM with either Apache or Nginx. If you wish
# to instead use Apache + mod_php with an Ubuntu base box, make sure you add
# libapache2-mod-php7.0 to `extra_packages` elsewhere in this config file.
php_enable_php_fpm: true
php_fpm_listen: "127.0.0.1:9000"
```
- For further information see the instructions [here](http://docs.drupalvm.com/en/latest/other/production/).

**secrets.yml**
- @todo Update this for both secrets.yml files.
- NOTE: This will use vim, make sure you can get out of the editor.
- Run: `ansible-vault create secrets.yml`
- Add the following lines with passwords (as just plain text no quotes necessary):
```
# Since this will be a publicly-accessible instance of Drupal VM, make sure you
# configure secure passwords, especially for Drupal and MySQL!
drupal_account_pass: password
drupal_db_password: password
mysql_root_password: password
```

**manual edit of sudo file**
- `admin        ALL=(ALL)       NOPASSWD: ALL`

**start it up**
- NOTE: Make sure you configured your DIGITAL_OCEAN_TOKEN environment variable in step 1.
- Run `DRUPALVM_ENV=prod DRUPALVM_ANSIBLE_ARGS='--ask-vault-pass' vagrant up --provider=digital_ocean`
- The first part of this command: `DRUPALVM_ENV=prod` tells drupalvm to read the prod.config.yml file.
- The second part of the command `DRUPALVM_ANSIBLE_ARGS='--ask-vault-pass'` tells ansible-vault to ask for your password.
- The third part of this command: `vagrant up --provider=digital_ocean` tells vagrant to use the digital ocean provisioner.

**consider manually adding DO monitoring**
- Run `DRUPALVM_ENV=prod vagrant ssh`
- Run `curl -sSL https://agent.digitalocean.com/install.sh | sh`

**install ansible**
- https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-14-04

**setup environment variable**
- Add `DRUPALVM_ENV=prod` to `/etc/environment`

**run ansible provisioning**
- `DRUPALVM_ENV=prod ansible-playbook  ./provisioning/playbook.yml -e "config_dir=$(pwd)" -c local -i "localhost," --ask-vault-pass`

**change hostname**

**change drupal install site to false**

**add solr**

**add 81 to firewall**

**install solr configuration script**
