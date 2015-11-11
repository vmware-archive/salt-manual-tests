salt-manual-tests:
  git.latest:
    - name: https://github.com/saltstack/salt-manual-tests.git
    - target: /root/salt-manual-tests
    - rev: master

salt-contrib:
  git.latest:
    - name: https://github.com/saltstack/salt-contrib.git
    - target: /root/salt-contrib
    - rev: master
