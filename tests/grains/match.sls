# there is probably a more correct way to do this, but it works for now. 

{% set os_list = ['CentOS', 'Ubuntu'] %}

match_cent:
  module.run:
    - name: cmd.run
    - cmd: salt -G 'os:{{ os_list[0] }}' test.ping
    - python_shell: True

match_ubu:
  module.run:
    - name: cmd.run
    - cmd: salt -G 'os:{{ os_list[1] }}' test.ping
    - python_shell: True
