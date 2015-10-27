{% set file = salt['pillar.get']('filename', 'default-test') %}
create_file:
  cmd.run:
    - name: touch /tmp/{{ file }}
    - creates: /tmp/foo
