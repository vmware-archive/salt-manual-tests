{% if grains['os_family'] == 'RedHat' %}
  {% set xzpkg = 'xz' %}
{% elif grains['os_family'] == 'Debian' %}
  {% set xzpkg = 'xz-utils' %}
{% elif grains['os_family'] == 'Suse' %}
  {% set websrvr = 'thttpd' %}
  {% set xzpkg = 'xz' %}
{% else %}
  {% set websrvr = 'nginx' %}
  {% set xzpkg = 'xz' %}
{% endif %}

sys_up_to_date:
  pkg.uptodate

install_webserver {{ websrvr }} - install but don't start:
  pkg.installed:
    - name: {{ websrvr }}
  service:
    - name: {{ websrvr }}
    - dead

bad_service systemd - check for systemd service running, this should fail:
  service:
    - name: systemd
    - running

webserver_diabled {{ websrvr }} - set to disable:
  service:
    - name: {{ websrvr }}
    - disabled

mypkgs - check for latest versions:
  pkg.latest:
    - pkgs:
      - tar
      - sed
      - {{ xzpkg }}
