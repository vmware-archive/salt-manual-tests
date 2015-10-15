# Set up multi-master environment. Build 2 cent7 masters and 2 minions (1 cent6,
# 1 ubuntu 14) do this with salt-cloud

{% set master1 = salt['pillar.get']('m1', '')  %}                                                                  
{% set master2 = salt['pillar.get']('m2', '')  %}
{% set keyfiles = ['master.pem', 'master.pub'] %}
{% set role = salt ['pillar.get']('role', '') %}

{% if role == 'minion' %}
minion-config:
  file.append:
    - name: /etc/salt/minion
    - text: |
        master:
          - {{ master1 }} 
          - {{ master2 }}

minion-service:
  service.running:
    - name: salt-minion
    - enable: True
    - reload: True

{% elif role == 'master' %}
{% for key in keyfiles %}
{{ key }}:
  file.managed:
    - name: /etc/salt/pki/master/{{ key }}
    - source: salt://files/pki/m2m/{{ key }}
    - makedirs: True
{% endfor %}

master-service:
  service.running:
    - name: salt-master
    - enable: True
{% endif %}
