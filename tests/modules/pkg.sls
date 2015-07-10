# maybe switch from cmd.run?

install:
  cmd.run:
    - name: 'salt-call --local pkg.install htop'

refresh:
  cmd.run:
    - name: 'salt-call --local pkg.refresh_db'

owner:
  cmd.run:
    - name: 'salt-call --local pkg.owner `which vim`'

upgrade:
  cmd.run:
    - name: 'salt-call --local pkg.upgrade'

remove:
  cmd.run:
    - name: 'salt-call --local pkg.remove htop'
    - require: 
      - cmd: install
