munin-node:
  pkg:
    - installed
  service:
    - running
  require:
   - file: /etc/munin/munin-node.conf

munin-plugins-extra:
  pkg:
    - installed

/etc/munin/munin-node.conf:
  file.managed:
        - source: salt://munin/munin-node.conf
