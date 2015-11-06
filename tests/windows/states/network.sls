network_managed:
  network.managed:
    - name: saltnet
    - dns_proto: static
    - dns_servers: 
      - "4.2.2.2"
    - ip_proto: static
    - ip_addrs:
      - 10.0.0.10
    - gateway: 10.0.0.255
