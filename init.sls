apache_install:
  pkg.installed:
    - name: apache2
  service.running:
    - name: apache2
    - enable: true

apache_restart:
  module.wait:
    - name: service.restart
    - m_name: apache2
    - onchanges:
      - apache_configuration
