add_sls:
  file.managed:
    - name: /srv/salt/contents_pillar.sls
    - makedirs: True
    - contents: |
        test-lists:
          file.managed:
            - name: /tmp/test-lists-content-pillars
            - contents_pillar: docker:{{ grains['cpuarch'] }}

add_pillar_top:
  file.managed:
    - name: /srv/pillar/top.sls
    - makedirs: True
    - contents: |
        base:
          '*':
            - pillar_test

add_pillars:
  file.managed:
    - name: /srv/pillar/pillar_test.sls
    - makedirs: True
    - contents: |
        docker:
          x86_64:
            - id1
            - id2
            - id3
            - id5

refresh_pillars:
  cmd.run:
    - name: salt '*' saltutil.refresh_pillar

run_state:
  cmd.run:
    - name: salt '*' state.sls contents_pillar



