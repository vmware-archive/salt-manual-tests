{% if grains['os_family'] == 'RedHat' %}
  {% set link_file = '/etc/init.d' %}
{% elif grains['os_family'] == 'Debian' %}
  {% set link_file = '/etc/resolv.conf' %}
{% elif grains['os_family'] == 'Arch' %}
  {% set link_file = '/etc/os-release' %}
{% elif grains['os_family'] == 'Suse' %}
  {% set link_file = '/etc/rc.d' %}
{% else %}
  {% set link_file = '/bin/sh' %}
{% endif %}

file-access:
  module.run:
    - name: file.access
    - path: /etc/hosts
    - mode: f

file-diskusage:
  module.run:
    - name: file.diskusage
    - path: /etc

file-file_exists:
  module.run:
    - name: file.file_exists
    - path: /etc/hosts

file-get_group:
  module.run:
    - name: file.get_group
    - path: /etc/hosts

file-get_hash:
  module.run:
    - name: file.get_hash
    - path: /etc/hosts

file-get_mode:
  module.run:
    - name: file.get_mode
    - path: /etc/hosts

file-get_selinux_context:
  module.run:
    - name: file.get_selinux_context
    - path: /etc/hosts

file-get_sum:
  module.run:
    - name: file.get_sum
    - path: /etc/hosts
    - form: sha512

file-get_uid:
  module.run:
    - name: file.get_uid
    - path: /etc/hosts

file-get_user:
  module.run:
    - name: file.get_user
    - path: /etc/hosts

file-grep:
  module.run:
    - name: file.grep
    - path: /etc/hosts
    - pattern: localhost

file-is_link - {{ link_file }}:
  module.run:
    - name: file.is_link
    - path: {{ link_file }}

file-lstat:
  module.run:
    - name: file.lstat
    - path: /etc/hosts

file-open_files:
  module.run:
    - name: file.open_files

file-pardir:
  module.run:
    - name: file.pardir

file-readdir:
  module.run:
    - name: file.readdir
    - path: /etc

file-search:
  module.run:
    - name: file.search
    - path: /etc/hosts
    - pattern: localhost

file-stats:
  module.run:
    - name: file.stats
    - path: /etc/hosts

file-statvfs:
  module.run:
    - name: file.statvfs
    - path: /etc/hosts

file-uid_to_user:
  module.run:
    - name: file.uid_to_user
    - uid: 0

file-user_to_uid:
  module.run:
    - name: file.user_to_uid
    - user: root

