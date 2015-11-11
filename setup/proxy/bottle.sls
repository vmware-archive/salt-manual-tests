install_bottle:
  pip.installed:
    - name: bottle
    - require:
      - pkg: setup.proxy.pip
