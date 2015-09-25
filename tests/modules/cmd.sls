{% set string = 'Hello, Python' %}
exec_code:
  cmd.run:
    - name: "salt localminion cmd.exec_code python3 'print(\"{{ string }}\")'"

has_exec:
  cmd.run:
    - name: "salt localminion cmd.has_exec cat"

{% set command = "file /bin/bash" %}
retcode:
  cmd.run:
    - name: "salt localminion cmd.retcode \"{{ command }}\" "
