## masterless
### Setup
* Install Salt (minion only)
* Change minion config to run in local mode

```sed -i 's/^#file_client:.*$/file_client: local/' /etc/salt/minion```

* Copy `*.sls` files to `/srv/salt`
* Unload and disable salt-minion from automatically starting
### Test
* Start test

```salt-call --local state.highstate```

### Results
The state files have been tested on Arch Linux, CentOS 7.1, openSUSE 13.2, and Ubuntu 14.04 with Salt 2015.8.1 (Beryllium). The test will result in 2 failures (intended failures), and more with openSUSE and Ubuntu due to Salt issue [#28872](https://github.com/saltstack/salt/issues/28872).
