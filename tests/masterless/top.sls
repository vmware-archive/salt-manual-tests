base:
  '*':
    - package
    - uptodate
    - acl
    - aliases
    {% if grains['os_family'] != 'Arch' %}
    - alternatives
    - cron
    {% endif %}
    - data
    - disk
    - dnsutil
    - file
    - hashutil
    - hosts
    - keyboard
    - key
    - kmod
    - service
    - shadow
    {% if (grains['os_family'] != 'Arch') and (grains['os_family'] != 'Suse') %}
    - smbios
    {% endif %}
    - status
    - sysctl
