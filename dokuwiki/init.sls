include:
  - apache
  - php

dokuwiki:
  pkg.installed:
    - name: dokuwiki
    - require:
      - pkg: apache2
      - pkg: php5

/etc/apache2/conf-enabled/dokuwiki.conf:
  file.managed:
      - source: salt://dokuwiki/files/apache.conf
      - require:
        - pkg: dokuwiki

/etc/dokuwiki/local.php:
  file.managed:
      - source: salt://dokuwiki/files/local.php
      - require:
        - pkg: dokuwiki


