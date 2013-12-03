mysql-server:
  pkg.installed:
    - name: {{ "mysql-server" if pillar["mysql-version"] is not defined else "mysql-server-%s" % pillar["mysql-version"] }}
  service.running:
    - name: mysql
    - require:
      - pkg: mysql-server
      - pkg: mysql-client
