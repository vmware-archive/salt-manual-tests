master_conf:
  file.append:
    - name: /etc/salt/master
    - text: |
        pillar_roots:
          base:
            - /root/salt-manual-tests/proxy/pillar
        file_roots:
          base:
            - /root/salt-manual-tests/proxy/states
