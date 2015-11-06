cmd_run:
  module.run:
    - name: cmd.run
    - cmd: type c:\salt\conf\minion > nul
    - python_shell: True
