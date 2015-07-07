# Setup a regular master/minion environment. 1 cent7 master and 2 minions. 

regular-env:
  salt.state:
    - tgt: master1
    - sls:
      - <insert building sls files>
