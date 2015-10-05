firewall get config:
  module.run:
    - name: firewall.get_config

firewall disable:
  module.run:
    - name: firewall.disable

firewall enable:
  module.run:
    - name: firewall.enable

firewall get rule:
  module.run:
    - name: firewall.get_rule
    - m_name: 'Remote Event Log Management (NP-In)'

firewall add rule:
  module.run:
    - name: firewall.add_rule
    - m_name: test_rule
    - localport: 8080

firewall delete rule:
  module.run:
    - name: firewall.delete_rule
    - m_name: test_rule
    - localport: 8080
    - protocol: tcp
    - dir: in
