user_add:
  module.run:
    - name: user.add
    - m_name: salt_user
    - password: WsuUbdJPsWmkhMdCwDpRFSNNl9G7HBEz

group_add_salt_admins:
  module.run:
    - name: group.add
    - m_name: salt_admins

group_add_salt_users:
  module.run:
    - name: group.add
    - m_name: salt_users

user_addgroup:
  module.run:
    - name: user.addgroup
    - m_name: salt_user
    - group: salt_admins
    - require:
      - module: user_add
      - module: group_add_salt_admins

user_chgroups:
  module.run:
    - name: user.chgroups
    - m_name: salt_user
    - groups: salt_users
    - require:
      - module: user_add
      - module: group_add_salt_users

user_removegroup:
  module.run:
    - name: user.removegroup
    - m_name: salt_user
    - group: salt_users

user_rename:
  module.run:
    - name: user.rename
    - m_name: salt_user
    - new_name: salt_admin

user_delete:
  module.run:
    - name: user.delete
    - m_name: salt_admin

group_delete_salt_admins:
  module.run:
    - name: group.delete
    - m_name: salt_admins

group_delete_salt_users:
  module.run:
    - name: group.delete
    - m_name: salt_users
