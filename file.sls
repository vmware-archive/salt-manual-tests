many_files:
  file.recurse:
    - name: c:\\salt\\configs
    - source: salt://salt-tests/files/tree
    - include_empty: True

the_file:
  file.managed:
    - name: c:\\salt\\configs\\main.cfg
    - source: salt://salt-tests/files/main.cfg

comment_main:
  file.comment:
    - name: c:\\salt\\configs\\main.cfg
    - regex: '^status'
