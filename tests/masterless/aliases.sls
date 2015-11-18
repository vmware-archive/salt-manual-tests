{% if grains['os_family'] == 'Suse' %}
  {% set trgtusr = 'postmaster' %}
{% else %}
  {% set trgtusr = 'root' %}
{% endif %}

aliases-list_aliases:
  module.run:
    - name: aliases.list_aliases

aliases-get_target:
  module.run:
    - name: aliases.get_target
    - alias: mail

{% if grains['os_family'] != 'Arch' %}
aliases-has_target:
  module.run:
    - name: aliases.has_target
    - alias: mail
    - target: {{ trgtusr }}
{% endif %}
