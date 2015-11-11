install_bottle:
  pip.installed:
    - name: bottle
    - require:
      - pkg: pip
