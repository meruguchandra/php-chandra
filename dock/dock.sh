#!/bin/sh

#mysql.server start

/etc/init.d/mysql start

mysql -u root -e  "source /usr/sbin/banktable.sql"
#php /usr/sbin/db.php


echo " * Starting Apache Server...! "
#/usr/sbin/apachectl  start
service apache2 restart

echo "php-chandra is up .. You can access http://localhost:8090/php-chandra/login.php"

/bin/bash
#To start docker run -it -p 8080:80 php-chandra
#CMD ["/usr/sbin/dock.sh"]