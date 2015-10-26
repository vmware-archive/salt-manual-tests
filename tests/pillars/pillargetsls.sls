{% set file = salt['pillar.get']('filename', 'default-test') %}
touch /tmp/{{ file }}:
  cmd.run:
    - creates: /tmp/foo
