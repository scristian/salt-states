include:
  - nginx
  - supervisor
  - python.gunicorn


/etc/supervisor/conf.d/loovea.conf:
  file.managed:
    - source: salt://loovea/supervisor.conf
    - user: root
    - group: root
    - mode: 644

/etc/nginx/conf.d/loovecom.conf:
  file.managed:
    - source: salt://loovea/nginx/looveacom.conf

/etc/nginx/conf.d/staticloovea.conf:
  file.managed:
    - source: salt://loovea/nginx/staticloovea.conf

#dev
/etc/nginx/conf.d/devlooveacom.conf:
  file.managed:
    - source: salt://loovea/nginx/devlooveacom.conf

/etc/nginx/conf.d/staticdevlooveacom.conf:
  file.managed:
    - source: salt://loovea/nginx/staticdevlooveacom.conf

loovea:
  user:
    - present

#todo:
# 1. install requirements.txt
