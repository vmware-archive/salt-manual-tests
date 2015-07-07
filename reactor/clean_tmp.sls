clean_tmp:
  local.cmd.run:
    - tgt: '*'
    - arg:
      - rm -rf /tmp/*
