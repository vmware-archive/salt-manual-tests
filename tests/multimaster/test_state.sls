state:
  module.run: 
    - name: cmd.run
    - cmd: salt '*' state.sls tests.multimaster.echo
    - python_shell: True

highstate:
  module.run: 
    - name: cmd.run
    - cmd: salt '*' state.highstate
    - python_shell: True
