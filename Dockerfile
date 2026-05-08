FROM mediawiki:1.45.3

# 1. PostgreSQL 접속을 위한 드라이버 설치
USER root
RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pgsql pdo_pgsql

# 2. 설정 파일 복사 및 권한 설정
COPY LocalSettings.php /var/www/html/LocalSettings.php
RUN chown www-data:www-data /var/www/html/LocalSettings.php

# 3. 포트 설정
ENV PORT=80
EXPOSE 80
