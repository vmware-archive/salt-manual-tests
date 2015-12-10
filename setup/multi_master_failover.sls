{# test example of running this sls file using salt-ssh:  #}                                                                                                                                                                                
{# for master: sudo salt-ssh '*M*' state.sls multi_master_failover pillar="{'role': 'master'}" #}                                                                                                                                                        
{# for minion: sudo salt-ssh '*min*' state.sls multi_master_failover pillar="{'m1': '1.1.1.1', 'm2':'2.2.2.2', 'role': 'minion'}" #}
{% set master1 = salt['pillar.get']('m1', '')  %}                                                                  
{% set master2 = salt['pillar.get']('m2', '')  %}
{% set keyfiles = ['master.pem', 'master.pub'] %}
{% set role = salt ['pillar.get']('role', '') %}

{% if role == 'minion' %}
minion-config:
  file.append:
    - name: /etc/salt/minion
    - text: |
        master_type: failover
        master_shuffle: True
        master_alive_check: 30
        master:
          - {{ master1 }} 
          - {{ master2 }}

minion-service:
  service.running:
    - name: salt-minion
    - enable: True
    - watch:
      - file: minion-config

{% elif role == 'master' %}
{% for key in keyfiles %}
{{ key }}:
  file.managed:
    - name: /etc/salt/pki/master/{{ key }}
    - source: salt://files/pki/m2m/{{ key }}
    - makedirs: True

master-service-{{ key }}:
  service.running:
    - name: salt-master
    - enable: True
    - watch:
      - file: {{ key }}
{% endfor %}
{% endif %}
