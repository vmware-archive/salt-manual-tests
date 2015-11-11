install_bottle:
  pip.installed:
    - name: bottle
    - require:
      - pkg: install_pip
