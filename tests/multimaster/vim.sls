{% if grains['os_family'] == 'RedHat' %}
  {% set vim = 'vim-enhanced' %}
{% else %}
  {% set vim = 'vim' %}
{% endif %}

install_vim:
  pkg.installed:
    - name: {{ vim }}
