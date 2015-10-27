network_netstat:
  module.run:
    - name: network.netstat

network_ping:
  module.run:
    - name: network.ping
    - host: gentoo.org

network_traceroute:
  module.run:
    - name: network.traceroute
    - host: gentoo.org

network_nslookup:
  module.run:
    - name: network.nslookup
    - host: gentoo.org
