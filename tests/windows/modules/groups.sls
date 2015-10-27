group_add:
  module.run:
    - name: group.add
    - m_name: groupy

group_info:
  module.run:
    - name: group.info
    - m_name: groupy

group_getent:
  module.run:
    - name: group.getent
    - m_name: groupy
    - refresh: True

group_delete:
  module.run:
    - name: group.delete
    - m_name: groupy
