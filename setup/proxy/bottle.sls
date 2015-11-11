install_bottle:
  pip.installed:
    - name: bottle
    - require:
      - cmd: install_pip
