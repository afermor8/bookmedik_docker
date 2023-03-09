#! /bin/sh

mysql -u $USUARIO_BOOKMEDIK --password=$PASS_BOOKMEDIK -h $HOST_DB $NOMBRE_DB < /var/www/html/schema.sql

/usr/sbin/apache2ctl -D FOREGROUND
