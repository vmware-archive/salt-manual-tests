group add:
  module.run:
    - name: group.add
    - m_name: groupy

group info:
  module.run:
    - name: group.info
    - m_name: groupy

group getent:
  module.run:
    - name: group.getent
    - m_name: groupy
    - refresh: True

group delete:
  module.run:
    - name: group.delete
    - m_name: groupy
