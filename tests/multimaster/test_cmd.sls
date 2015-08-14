ping:
  cmd.run:
    - name: "salt '*' test.ping"

version_report:
  cmd.run:
    - name: "salt '*' test.versions_report"

grains:
  cmd.run:
    - name: "salt '*' grains.items"
