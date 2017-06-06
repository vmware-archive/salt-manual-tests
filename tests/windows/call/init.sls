file_managed:
  file.managed:
    - name: c:/test/salt_call
    - makedirs: True
    - contents: |
        test1
        test2
        test3

salt-call:
  cmd.run:
    - name: 'c:\\salt\\salt-call.bat --local file.replace c:\\test\\salt_call pattern="test" repl="worked"'
