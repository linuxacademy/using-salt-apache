apache_install:
  pkg.installed:
    - name: apache2
  service.running:
    - name: apache2
    - enable: true
