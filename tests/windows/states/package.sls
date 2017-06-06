pkg_refresh_db:
  module.run:
    - name: pkg.refresh_db

package_installed:
  pkg.installed:
    - pkgs:
      - firefox
      - adobereader
      - chrome

pkg_latest:
  pkg.latest:
    - pkgs:
      - firefox
      - adobereader
      - chrome
