include:
  - mysql

owncloud-local:
  mysql_user.present:
    - name: owncloud
    - host: localhost
    - password: {{ salt['pillar.get']('owncloudpass', '') }}
    - require:
      - pkg: mysql-server
      - pkg: python-mysqldb
      - service: mysql

ownclouddb:
  mysql_database:
    - present
    - name: owncloud
    - require:
      - mysql_user: owncloud
      - pkg: mysql-server
  mysql_grants:
    - present
    - grant: all privileges
    - database: owncloud.*
    - host: localhost
    - user: owncloud
    - require:
      - mysql_database: owncloud
      - pkg: mysql-server
      - service: mysql
