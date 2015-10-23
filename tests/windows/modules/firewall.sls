firewall_get_config:
  module.run:
    - name: firewall.get_config

firewall_disable:
  module.run:
    - name: firewall.disable

firewall_enable:
  module.run:
    - name: firewall.enable

firewall_get_rule:
  module.run:
    - name: firewall.get_rule
    - m_name: 'Remote Event Log Management (NP-In)'

firewall_add_rule:
  module.run:
    - name: firewall.add_rule
    - m_name: test_rule
    - localport: 8080

firewall_delete_rule:
  module.run:
    - name: firewall.delete_rule
    - m_name: test_rule
    - localport: 8080
    - protocol: tcp
    - dir: in
