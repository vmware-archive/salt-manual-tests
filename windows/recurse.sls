{% if grains['os'] == 'Windows' %}
  {% set file_name = 'c:\\\salt\\file' %}
  {% set dir_name = 'c:\\\salt\\config_dir' %}
{% endif %}

tmp-config:
  file.managed:
    - name: {{ file_name }}
    - source: salt://windows/config

configs:
  file.recurse:
    - name: {{ dir_name }}
    - source: salt://windows/config_dir
