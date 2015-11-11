proxy_conf:
  file.managed:
    - name: /etc/salt/proxy
    - source: salt://setup/proxy/proxy
    - user: root
    - group: root
