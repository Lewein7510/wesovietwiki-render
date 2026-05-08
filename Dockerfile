FROM mediawiki:1.45.3

USER root
RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pgsql pdo_pgsql

COPY LocalSettings.php /var/www/html/LocalSettings.php
RUN chown www-data:www-data /var/www/html/LocalSettings.php

ENV PORT=80
EXPOSE 80
