service_get_enabled:
  module.run:
    - name: service.get_enabled

service_get_disabled:
  module.run:
    - name: service.get_disabled

service_get_service_name:
  module.run:
    - name: service.get_service_name

service_enable:
  module.run:
    - name: service.enable
    - m_name: fontcache

service_disable:
  module.run:
    - name: service.disable
    - m_name: fontcache

start_salt_minion:
  module.run:
    - name: service.start
    - m_name: salt-minion

restart_salt_minion:
  module.run:
    - name: service.restart
    - m_name: salt-minion

start_spooler:
  module.run:
    - name: service.start
    - m_name: Spooler
