net0:
  network.managed:
    - enabled: True
    - type: eth
    - proto: none
    - ipaddr: 10.1.0.1
    - netmask: 255.255.255.0
    - dns:
      - 4.2.2.1
      - 4.2.2.2

net_routes:
  network.routes:
    - name: net0
    - routes:
      - name: secure_network
        ipaddr: 10.2.0.0
        netmask: 255.255.255.0
        gateway: 10.1.0.3
      - name: HQ_network
        ipaddr: 10.100.0.0
        netmask: 255.255.0.0
        gateway: 10.1.0.10

system:
    network.system:
      - enabled: True
      - hostname: zeus.olympia
      - gateway: 192.168.0.1
      - gatewaydev: net0
      - nozeroconf: True
      - nisdomain: zeus.olympia
      - require_reboot: True
      - apply_hostname: True
