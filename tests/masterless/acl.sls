acl-version:
  module.run:
    - name: acl.version

acl-getfacl:
  module.run:
    - name: acl.getfacl
    - args:
      - /etc/hosts

