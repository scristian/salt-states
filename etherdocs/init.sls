include:
  - redis
  - node

ethercalc:
  npm.installed:
  - require:
    - pkg: npm
    - pkg: redis
