include:
  - apache

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
