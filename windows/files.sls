{% if grains['os'] == 'Windows' %}
  {% set file_name = 'c:\\\salt\\config_file' %}
  {% set dir_name = 'c:\\\salt\\config_dir' %}
{% endif %}

single-config:
  file.managed:
    - name: {{ file_name }}
    - source: salt://windows/config

recursive-configs:
  file.recurse:
    - name: {{ dir_name }}
    - source: salt://windows/config_dir
