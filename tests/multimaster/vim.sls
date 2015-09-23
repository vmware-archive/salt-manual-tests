{% if grains['os_family'] == 'RedHat' %}
  {% set vim = 'vim-enhanced' %}
{% else %}
  {% set vim = 'vim' %}
{% endif %}

vim_install:
  pkg.installed:
    - name: {{ vim }}
