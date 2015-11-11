salt-manual-tests:
  git.latest:
    - name: https://github.com/saltstack/salt-manual-tests.git
    - rev: master
    - require:
      - pkg: git

salt-contrib:
  git.latest:
    - name: https://github.com/saltstack/salt-contrib.git
    - rev: master
    - require:
      - pkg: git
