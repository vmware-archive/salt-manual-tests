system set computer name:
  module.run:
    - name: system.set_computer_name
    - m_name: Window-Salt

system get pending computer name:
  module.run:
    - name: system.get_pending_computer_name

system get computer name:
  module.run:
    - name: system.get_computer_name

system get system time:
  module.run:
    - name: system.get_system_time

system get system date:
  module.run:
    - name: system.get_system_date
