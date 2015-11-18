{% if grains['os_family'] != 'Arch' %}
package-repos:
  module.run:
    - name: pkg.list_repos

{% if grains['os_family'] != 'Suse' %}
package-groups:
  module.run:
    - name: pkg.group_list
{% endif %}
{% endif %}

package-refresh_db:
  module.run:
    - name: pkg.refresh_db

package-list_upgrades:
  module.run:
    - name: pkg.list_upgrades

package-list_pkgs:
  module.run:
    - name: pkg.list_pkgs

package-file_dict:
  module.run:
    - name: pkg.file_dict
    - packages:
      - bash

package-file_list:
  module.run:
    - name: pkg.file_list
    - packages:
      - bash

{% if (grains['os_family'] != 'Arch') and (grains['os_family'] != 'Suse') %}
package-check_db:
  module.run:
    - name: pkg.check_db
    - packages:
      - bash
{% endif %}

package-owner:
  module.run:
    - name: pkg.owner
    - paths:
      - /bin/bash
      - /bin/ls
      - /bin/ldd

#package-version:
#  module.run:
#    - name: pkg.version
#    - m_names:
#      - sed
#      - tar
#      - xz
#      - bash

#package-info_installed:
#  module.run:
#    - name: pkg.info_installed
#    - m_names:
#      - sed
#      - tar
#      - xz
#      - bash

