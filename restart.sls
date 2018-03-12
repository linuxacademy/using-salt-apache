apache_restart:
  module.wait:
    - name: service.restart
    - m_name: apache2
    - onchanges:
      - apache_configuration
