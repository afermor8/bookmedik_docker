#! /bin/sh

sleep 10

mysql -u $USUARIO_BOOKMEDIK --password=$PASS_BOOKMEDIK -h $HOST_DB $NOMBRE_DB < /usr/share/nginx/html/schema.sql

nginx -g "daemon off;"
