ip.get_default_gateway:
  module.run:
    - name: ip.get_default_gateway

ip_is_enabled:
  module.run:
    - name: ip.is_enabled
    - iface: 'Ethernet'

ip_disable:
  module.run:
    - name: ip.disable
    - iface: 'Ethernet'

ip_enable:
  module.run:
    - name: ip.enable
    - iface: 'Ethernet'

ip_set_dhcp_ip:
  module.run:
    - name: ip.set_dhcp_ip
    - iface: 'Test'

ip_get_default_gateway:
  module.run:
    - name: ip.get_default_gateway
