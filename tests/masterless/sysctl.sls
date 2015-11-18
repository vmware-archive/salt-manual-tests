sysctl-show:
  module.run:
    - name: sysctl.show

sysctl-get net.ipv4.ip_forward:
  module.run:
    - name: sysctl.get
    - m_name: net.ipv4.ip_forward

