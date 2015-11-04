stop_salt_minion:
  module.run:
    - name: service.stop
    - m_name: salt-minion

restart_salt_minion:
  module.run:
    - name: service.restart
    - m_name: salt-minion
    - require:
      - module: stop_salt_minion

stop_print_spooler:
  module.run:
    - name: service.stop
    - m_name: Print Spooler

restart_print_spooler:
  module.run:
    - name: service.restart
    - m_name: Print Spooler
    - require:
      - module: stop_print_spooler

service_get_service_name:
  module.run:
    - name: service.get_service_name
