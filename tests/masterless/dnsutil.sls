dnsutil-A:
  module.run:
    - name: dnsutil.A
    - host: www.google.com

dnsutil-AAAA:
  module.run:
    - name: dnsutil.AAAA
    - host: www.google.com

dnsutil-MX:
  module.run:
    - name: dnsutil.MX
    - domain: google.com

dnsutil-NS:
  module.run:
    - name: dnsutil.NS
    - domain: google.com

dnsutil-parse_hosts:
  module.run:
    - name: dnsutil.parse_hosts

