pkg_refresh_db:
  module.run:
    - name: pkg.refresh_db

pkg_list_pkgs:
  module.run:
    - name: pkg.list_pkgs
    - require:
      - module: pkg_refresh_db

pkg_install_firefox:
  module.run:
    - name: pkg.install
    - m_name: firefox

pkg_remove_firefox:
  module.run:
    - name: pkg.remove
    - m_name: firefox

pkg_install_adobereader:
  module.run:
    - name: pkg.install
    - m_name: adobereader

pkg_remove_adobereader:
  module.run:
    - name: pkg.remove
    - m_name: adobereader
