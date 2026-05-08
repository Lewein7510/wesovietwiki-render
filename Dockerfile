FROM mediawiki:1.45.3
COPY LocalSettings.php /var/www/html/LocalSettings.php
USER root
RUN chown www-data:www-data /var/www/html/LocalSettings.php
ENV PORT=80
EXPOSE 80
