{% set string = 'Hello, Python' %}
exec_code:
  cmd.run:
    - name: "salt '*' cmd.exec_code python3 'print(\"{{ string }}\")'"

has_exec:
  cmd.run:
    - name: "salt '*' cmd.has_exec cat"

{% set command = "file /bin/bash" %}
retcode:
  cmd.run:
    - name: "salt '*' cmd.retcode \"{{ command }}\" "
