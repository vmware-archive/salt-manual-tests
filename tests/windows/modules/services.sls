stop salt minion:
  module.run:
    - name: service.stop
    - m_name: salt-minion

restart salt minion:
  module.run:
    - name: service.restart
    - m_name: salt-minion
    - require:
      - module: stop salt minion

stop print spooler:
  module.run:
    - name: service.stop
    - m_name: Print Spooler

restart print spooler:
  module.run:
    - name: service.restart
    - m_name: Print Spooler
    - require:
      - module: stop print spooler

service get service name:
  module.run:
    - name: service.get_service_name
