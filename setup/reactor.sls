# create reactor directory
/srv/reactor/clean_tmp.sls:
  file.managed:
    - source: ../reactor/clean_tmp.sls
    - makedirs: True
    - user: root
    - group: root

# append reactor info to master config
/etc/salt/master:
  file.append:
    - text:
      - " reactor:"
      - "   - 'salt/minion/*/start':"
      - "     - '/srv/reactor/clean_tmp.sls'"
