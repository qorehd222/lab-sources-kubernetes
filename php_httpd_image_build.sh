#!/usr/bin/env bash

set -o errexit

container=$(buildah from centos)

buildah config --label maintainer="CHOI GOOKHYUN <tang@linux.com>" $container

buildah from centos
buildah run centos-working-container yum install httpd -y
buildah run centos-working-container yum install php -y 
buildah run centos-working-container yum install php-mysqld -y
buildah run centos-working-container yum install php-cli -y
copy php_container_php_apps.php /var/www/html/index.php

buildah config --entrypoint "/usr/sbin/httpd -DFOREGROUND"
