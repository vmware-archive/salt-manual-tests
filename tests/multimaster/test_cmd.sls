ping:
  module.run:
    - name: cmd.run
    - cmd: salt '*' test.ping
    - python_shell: True

version_report:
  module.run:
    - name: cmd.run:
    - cmd: salt '*' test.versions_report
    - python_shell: True

grains:
  module.run:
    - name: cmd.run
    - cmd: "salt '*' grains.items"
    - python_shell: True
