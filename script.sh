#! /bin/sh

mysql -u $USUARIO_BOOKMEDIK --password=$CONTRA_BOOKMEDIK -h $DATABASE_HOST $NOMBRE_DB < /var/www/html/schema.sql

/usr/sbin/apache2ctl -D FOREGROUND
