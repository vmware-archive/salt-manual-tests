hashutil-base64_encodestring:
  module.run:
    - name: hashutil.base64_encodestring
    - instr: 'saltstack'

hashutil-md5_digest:
  module.run:
    - name: hashutil.md5_digest
    - instr: 'saltstack'

hashutil-sha256_digest:
  module.run:
    - name: hashutil.sha256_digest
    - instr: 'saltstack'

hashutil-sha512_digest:
  module.run:
    - name: hashutil.sha512_digest
    - instr: 'saltstack'
