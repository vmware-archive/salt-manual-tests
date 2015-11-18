{% if grains['os_family'] == 'Suse' %}
  {% set websrvr = 'thttpd' %}
{% else %}
  {% set websrvr = 'nginx' %}
{% endif %}

service-available {{ websrvr }} - {{ websrvr }} should be available:
  module.run:
    - name: service.available
    - m_name: {{ websrvr }}

service-missing bogus - 'bogus' service is missing:
  module.run:
    - name: service.missing
    - m_name: bogus

service-status {{ websrvr }} - this should fail:
  module.run:
    - name: service.status
    - m_name: {{ websrvr }}
    - sig: ps

