include:
  - apache
  - owncloud.mysql

php5:
  pkg.installed:
    - names:
      - php5
      - php5-gd
      - php5-intl
      - php-xml-parser
      - php5-mysql
      - curl
      - libcurl3
      - php5-curl
      - php5-ldap
      - php5-json
    - require:
      - pkg: apache2

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

/etc/php5/apache2/php.ini:
  file.managed:
    - source: salt://owncloud/files/php.ini.apache

/etc/php5/cli/php.ini:
  file.managed:
    - source: salt://owncloud/files/php.ini.cli


