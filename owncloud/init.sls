include:
  - apache
  - owncloud.mysql
  - php

#/var/www/owncloud/config/config.php:
#  file.managed:
#    - source: salt://owncloud/files/config.php
#    - user: www-data
#    - group: www-data

/etc/apache2/conf-enabled/owncloud.conf:
  file.managed:
    - source: salt://owncloud/files/owncloud.conf
    - require:
      - pkg: apache2

sendmail: pkg.intalled 

apache2-enable-mod-rewrite:
  cmd.run: 
    - name: a2enmod rewrite
    - unless: test -f '/etc/apache2/mods-enabled/rewrite.load'
    - require:
      - pkg: apache2
    - watch_in:
      - service: apache

/etc/php5/apache2/php.ini:
  file.managed:
    - source: salt://owncloud/files/php.ini.apache

/etc/php5/cli/php.ini:
  file.managed:
    - source: salt://owncloud/files/php.ini.cli


