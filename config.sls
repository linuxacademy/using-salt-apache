include:
  - apache

apache_configuration:
  file.managed:
    - name: /etc/apache2/apache2.conf
    - source: salt://apache/config/debian-apache2.conf
    - require:
      - pkg: apache2
