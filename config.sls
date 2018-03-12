{% from "apache/map.jinja" import apache with context %}

include:
  - apache

apache_configuration:
  file.managed:
    - name: {{ apache.configfile }}
    - source: {{ apache.configsource }}
    - require:
      - pkg: {{ apache.package }}
