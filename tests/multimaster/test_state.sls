state:
  cmd.run:
    - name: "salt '*' state.sls tests.multimaster.echo"

highstate:
  cmd.run:
    - name: "salt '*' state.highstate"
