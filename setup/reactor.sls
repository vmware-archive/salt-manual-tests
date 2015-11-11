# create reactor directory and tmp file
reactor_tmp:
  file.managed:
    - name: /srv/reactor/clean_tmp.sls
    - source: salt://tests/reactor/clean_tmp.sls
    - makedirs: True
    - user: root
    - group: root

# append reactor info to master config
master_conf:
  file.append:
    - name: /etc/salt/master
    - text:
      - " reactor:"
      - "   - 'salt/minion/*/start':"
      - "     - '/srv/reactor/clean_tmp.sls'"
