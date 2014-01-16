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

  'roles:loovea':
    - match: grain
    - loovea
