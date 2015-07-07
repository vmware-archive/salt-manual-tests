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
