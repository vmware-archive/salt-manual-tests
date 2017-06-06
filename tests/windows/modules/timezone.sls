timezone_get_zone:
  module.run:
    - name: timezone.get_zone

timezone_get_offset:
  module.run:
    - name: timezone.get_offset

timezone_set_zone:
  module.run:
    - name: timezone.set_zone
    - timezone: 'America/Denver'

timezone_zone_compare:
  module.run:
    - name: timezone.zone_compare
    - timezone: 'America/Denver'
