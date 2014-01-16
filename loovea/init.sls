include:
  - nginx
  - supervisor

/etc/supervisor/conf.d/loovea.conf:
  file.managed:
    - source: salt://loovea/supervisor.conf
    - user: root
    - group: root
    - mode: 644
