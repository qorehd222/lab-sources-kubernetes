FROM centos:7
LABEL maintainer CHOI GOOKHYUN <tang@linux.com>

RUN centos-working-container yum install httpd php php-mysqld php-cli 
COPY php_container_php_apps.php /var/www/html/index.php

ENTRYPOINT "/usr/sbin/httpd -DFOREGROUND"