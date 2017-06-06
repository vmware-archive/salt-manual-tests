ntp_set_servers:
  module.run:
    - name: ntp.set_servers
    - servers:
      - pool.ntp.org
      - us.pool.ntp.org

ntp_get_servers:
  module.run:
    - name: ntp.get_servers
