base:
  '*':
    - tests.multimaster.vim
    {%- if grains['os_family'] != 'RedHat' %}
    - tests.multimaster.cowsay
    {% endif %}
