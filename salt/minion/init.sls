/etc/salt/minion.d:
  file.directory:
    - user: root
    - group: root
    - mode: 0755
    - clean: True
    - require:
      - pkg: salt-minion

salt-minion:
  service:
    - running
    - enable: True
  pkg.installed:
    - names:
      - salt-minion
