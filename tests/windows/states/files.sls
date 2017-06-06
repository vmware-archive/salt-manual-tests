file_managed:
  file.managed:
    - name: c:/test/test
    - makedirs: True
    - contents: |
        Only a test

file_copy:
  file.copy:
    - name: c:/test/test1
    - source: c:/test/test
    - makedirs: True

file_comment:
  file.comment:
    - name: c:/test/test1
    - regex: '^Only'

file_replace:
  file.replace:
    - name: c:/test/test1
    - pattern: 'test'
    - repl: 'testing'

file_absent:
  file.absent:
    - name: c:/test/test1
