#!/bin/bash

apt-get update
apt-get install mysql-server -y
apt-get install mysql-client -y
apt-get install apache2 php5 libapache2-mod-auth-mysql  php5-mysql -y
apt-get install php5-gd php5-curl -y
cat > /etc/mysql/conf.d/lowendbox.cnf <<END
[mysqld]
#key_buffer = 12M
#query_cache_size = 0
#table_cache = 32

ignore_builtin_innodb
default_storage_engine=MyISAM
END

reboot