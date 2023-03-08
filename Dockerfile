FROM debian
MAINTAINER Arantxa Fernández Morató "ara.fer.mor@gmail.com"
RUN apt-get update && apt-get install -y apache2 libapache2-mod-php php php-mysql mariadb-client && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN rm /var/www/html/index.html
ADD bookmedik /var/www/html/
ADD script.sh /opt/
RUN chmod +x /opt/script.sh
EXPOSE 80
ENTRYPOINT ["/opt/script.sh"]
