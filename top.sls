base:
  '*':
    - salt.minion.mysql
    - utils
    - munin

  'roles:owncloud':
    - match: grain
    - owncloud
    - etherdocs
    - dokuwiki
