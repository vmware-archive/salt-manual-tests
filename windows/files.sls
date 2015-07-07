{% if grains['os'] == 'Windows' %}
  {% set file_name = 'c:\\\salt\\config_file' %}
  {% set cfg_name = 'c:\\\salt\\config_dir/main.cfg' %}
  {% set dir_name = 'c:\\\salt\\config_dir' %}
  {% set source_base = 'salt://salt-manual-tests' %}
{% endif %}

single-config:
  file.managed:
    - name: {{ file_name }}
    - source: {{ source_base }}/files/main.cfg

recursive-configs:
  file.recurse:
    - name: {{ dir_name }}
    - source: {{ source_base }}/files
    - include_empty: True

comment_main:
  file.comment:
    - name: {{ cfg_name }}
    - regex: '^status'
