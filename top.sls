base:
  '*':
    - salt.minion.mysql
    - utils

  'roles:owncloud':
    - owncloud
    - etherdocs
