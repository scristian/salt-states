supervisor:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: supervisor
    - watch:
      - pkg: supervisor

//fixme i am broken
