{% if grains['os'] == 'Windows' %}
  {% set file_name = 'c:\\\salt\\config_file' %}
  {% set cfg_name = 'c:\\\salt\\config_dir/main.cfg' %}
  {% set dir_name = 'c:\\\salt\\config_dir' %}
{% endif %}

single-config:
  file.managed:
    - name: {{ file_name }}
    - source: salt://tests/files/main.cfg

recursive-configs:
  file.recurse:
    - name: {{ dir_name }}
    - source: salt://tests/files
    - include_empty: True

comment_main:
  file.comment:
    - name: {{ cfg_name }}
    - regex: '^status'
