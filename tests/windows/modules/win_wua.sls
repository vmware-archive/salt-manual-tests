win_wua_list_update:
  module.run:
    - name: win_wua.list_update
    - guid: fake_uuid

win_wua_list_updates:
  module.run:
    - name: win_wua.list_updates
    - guid:
      - fake_uuid

win_wua_download_update:
  module.run:
    - name: win_wua.download_update
    - guid: fake_uuid

win_wua_download_updates:
  module.run:
    - name: win_wua.download_updates
    - guid:
      - fake_uuid

win_wua_install_update:
  module.run:
    - name: win_wua.install_update
    - guid: fake_uuid

win_wua_install_updates:
  module.run:
    - name: win_wua.install_updates
    - guid:
      - fake_uuid

win_wua_get_needs_reboot:
  module.run:
    - name: win_wua.get_needs_reboot

win_wua_get_wu_settings:
  module.run:
    - name: win_wua.get_wu_settings

win_wua_set_wu_settings:
  module.run:
    - name: win_wua.set_wu_settings
    - level: 1
    - recommended: True
    - featured: True
    - elevated: False
    - msupdate: True
    - day: Everyday
    - time: "15:00"
