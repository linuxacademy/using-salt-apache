{% from "apache/map.jinja" import apache with context %}

include:
  - apache

apache_configuration:
  file.managed:
    - template: jinja
    - name: {{ apache.configfile }}
    - source: {{ apache.configsource }}
    - require:
      - pkg: {{ apache.package }}

{% if grains['os_family']=="Debian" %}

apache_envvars:
  file.managed:
    - name: /etc/apache2/envvars
    - template: jinja
    - source: salt://apache/config/debian-envvars
    - require:
      - pkg: {{ apache.package }}

{% endif %}
