httpd:             #ID declare
  pkg.installed: []              # state declare
  service.running:
    - require:
      - pkg: httpd    

mysql_connector_repo:
  pkgrepo.managed:
    - name: MySQL Connectors Community
    - baseurl: http://repo.mysql.com/yum/mysql-connectors-community/el/7/$basearch/
    - enabled: 1
    - gpgcheck: 0
    - gpgkey: file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql

mysql_tools_repo:
  pkgrepo.managed:
    - name: MySQL Tools Community
    - baseurl: http://repo.mysql.com/yum/mysql-tools-community/el/7/$basearch/
    - enabled: 1
    - gpgcheck: 0
    - gpgkey: file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql

mysql_repo:
  pkgrepo.managed:
    - name: MySQLServer
    - baseurl: http://repo.mysql.com/yum/mysql-5.7-community/el/7/$basearch/
    - enabled: 1
    - gpgcheck: 0
    - gpgkey: file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql

mysql-depends:
  pkg.installed:
    - pkgs:
      - perl
      - libaio


mysql-community-server:
  pkg.installed:
    - fromrepo: MySQLServer

mysqld:
  service.running: []
