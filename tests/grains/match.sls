# there is probably a more correct way to do this, but it works for now. 

{% set os_list = ['CentOS', 'Ubuntu'] %}

match_cent:
  cmd.run:
    - name: "salt -G 'os:{{ os_list[0] }}' test.ping"

match_ubu:
  cmd.run:
    - name: "salt -G 'os:{{ os_list[1] }}' test.ping"
