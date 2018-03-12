{% set apache = salt['grains.filter_by']({
'Debian': { 'package': 'apache2' },
'RedHat': { 'package': 'httpd' },
}) %}

apache_install:
  pkg.installed:
    - name: {{ apache.package }}
  service.running:
    - name: {{ apache.package }}
    - enable: true
