include:
  - redis
  - node
  - supervisor

ethercalc:
  npm.installed:
  - require:
    - pkg: npm
    - pkg: redis-server

git_repo:
  git.latest:
    - name: https://github.com/ether/etherpad-lite.git
    - rev: "1.3.0"
    - target: /var/www/etherpad
    - require:
      - pkg: git
      - pkg: nodejs

files_etherdocs:
  git.latest:
    - name: https://github.com/EELV-fr/Owncloud-Ether-Docs.git
    - rev: master
    - target: /var/www/owncloud/apps/files_etherpad
    - require:
      - pkg: git
      - pkg: nodejs

/etc/supervisor/conf.d/ethercalc.conf:
  file.managed:
    - source: salt://etherdocs/ethercalc.conf
    - user: root
    - group: root
    - mode: 644

/etc/supervisor/conf.d/etherpad.conf:
  file.managed:
    - source: salt://etherdocs/etherpad.conf
    - user: root
    - group: root
    - mode: 644

/usr/bin/node:
  file.symlink:
      - target: /usr/bin/nodejs
      - require:
        - pkg: nodejs

#todo: add supervisor to monitor processes
