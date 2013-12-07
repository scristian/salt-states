etherpaduser:
  mysql_user.present:
    - name: etherpad
    - host: localhost
    - password: {{ salt['pillar.get']('etherpadpass', '') }}
    - require:
      - pkg: mysql-server
      - pkg: python-mysqldb
      - service: mysql

etherpaddb:
  mysql_database:
    - present
    - name: etherpad
    - require:
      - mysql_user: etherpad
      - pkg: mysql-server
  mysql_grants:
    - present
    - grant: all privileges
    - database: etherpad.*
    - host: localhost
    - user: etherpad
    - require:
      - mysql_database: etherpad
      - pkg: mysql-server
      - service: mysql
