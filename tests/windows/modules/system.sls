system_set_computer_name:
  module.run:
    - name: system.set_computer_name
    - m_name: Window-Salt

system_get_pending_computer_name:
  module.run:
    - name: system.get_pending_computer_name

system_get_computer_name:
  module.run:
    - name: system.get_computer_name

system_get_system_time:
  module.run:
    - name: system.get_system_time

system_get_system_date:
  module.run:
    - name: system.get_system_date
