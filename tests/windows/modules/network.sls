network netstat:
  module.run:
    - name: network.netstat

network ping:
  module.run:
    - name: network.ping
    - host: gentoo.org

network traceroute:
  module.run:
    - name: network.traceroute
    - host: gentoo.org

network nslookup:
  module.run:
    - name: network.nslookup
    - host: gentoo.org
