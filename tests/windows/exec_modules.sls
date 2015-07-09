# grains

grains items:
  module.run:
    - name: grains.items

# cmd

cmd run:
  module.run:
    - name: cmd.run
    - cmd: type c:\salt\conf\minion > nul

# cp

cp get url:
  module.run:
    - name: cp.get_url
    - path: https://kernel.org/pub/linux/kernel/v4.x/linux-4.1.tar.xz
    - dest: 'c:\\windows\\temp\\linux-4.1.tar.xz'

# autoruns

auto runs:
  module.run:
    - name: autoruns.list

# firewall

firewall get config:
  module.run:
    - name: firewall.get_config

firewall disable:
  module.run:
    - name: firewall.disable

firewall enable:
  module.run:
    - name: firewall.enable

firewall get rule:
  module.run:
    - name: firewall.get_rule
    - m_name: 'Remote Event Log Management (NP-In)'

firewall add rule:
  module.run:
    - name: firewall.add_rule
    - m_name: test_rule
    - localport: 8080

firewall delete rule:
  module.run:
    - name: firewall.delete_rule
    - m_name: test_rule
    - localport: 8080
    - protocol: tcp
    - dir: in

# users

user add:
  module.run:
    - name: user.add
    - m_name: salt_user

user delete:
  module.run:
    - name: user.delete
    - m_name: salt_user
    - password: WsuUbdJPsWmkhMdCwDpRFSNNl9G7HBEz

# groups

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

# service

stop salt minion:
  module.run:
    - name: service.stop
    - m_name: salt-minion

restart salt minion:
  module.run:
    - name: service.restart
    - m_name: salt-minion
    - require:
      - module: stop salt minion

stop print spooler:
  module.run:
    - name: service.stop
    - m_name: Print Spooler

restart print spooler:
  module.run:
    - name: service.restart
    - m_name: Print Spooler
    - require:
      - module: stop print spooler

service get service name:
  module.run:
    - name: service.get_service_name

# network

network netstat:
  module.run:
    - name: network.netstat

network ping:
  module.run:
    - name: network.ping
    - host: gentoo.org

network traceroute:
  module.run:
    - name: network.traceroute
    - host: gentoo.org

network nslookup:
  module.run:
    - name: network.nslookup
    - host: gentoo.org

# system

system set computer name:
  module.run:
    - name: system.set_computer_name
    - m_name: Window-Salt

system get pending computer name:
  module.run:
    - name: system.get_pending_computer_name

system get computer name:
  module.run:
    - name: system.get_computer_name

system get system time:
  module.run:
    - name: system.get_system_time

system get system date:
  module.run:
    - name: system.get_system_date

# packages

pkg list pkgs:
  module.run:
    - name: pkg.list_pkgs
