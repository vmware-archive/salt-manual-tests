add_epel:
  pkg.installed:
    - name: epel-release

add_git:
  pkg.installed:
    - name: git

install_pygit2:
  pkg.installed:
    - name: python-pygit2
    - require:
      - pkg: add_epel

pillar_config:
  file.append:
    - name: /etc/salt/master
    - text: |
        ext_pillar:
          - git:
            - master https://github.com/Ch3LL/pillar-test.git:
              - env: base
            - master https://github.com/saltstack/salt-manual-tests.git:
              - env: base
              - root: tests/pillars/git

wait_for_master:
  module.run:
    - name: test.sleep
    - length: 20

restart_master:
  service.running:
    - name: salt-master
    - watch:
      - file: pillar_config

refresh_pillar:
  cmd.run:
    - name: salt '*' saltutil.refresh_pillar

test_merge_multiple_remotes:
  cmd.run:
    - name: salt '*' pillar.items
