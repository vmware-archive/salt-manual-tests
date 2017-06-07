status_cpuload:
  module.run:
    - name: status.cpuload

status_diskusage:
  module.run:
    - name: status.diskusage
    - path: c:/salt

status_procs:
  module.run:
    - name: status.procs

status_procs_count:
  module.run:
    - name: status.procs
    - count: True

status_saltmem:
  module.run:
    - name: status.saltmem

status_saltmem_readable:
  module.run:
    - name: status.saltmem
    - human_readable: True

status_uptime:
  module.run:
    - name: status.uptime

status_uptime_readable:
  module.run:
    - name: status.uptime
    - human_readable: True
