from php:7.4-fpm

RUN apt-get update && apt-get install -y \
        apt-utils

RUN apt-get install -y \
        libmcrypt-dev \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libmemcached-dev \
        zlib1g-dev \
        mariadb-client \
        libsqlite3-dev \
        libsqlite3-0 \
        libc-client-dev \
        libxml2-dev \
        curl \
        libc6 \
        libcurl4-gnutls-dev \
        libonig-dev \
        libzip-dev \
        libcurl4

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd curl pdo pdo_mysql session json mbstring bcmath exif fileinfo gettext iconv opcache soap dom zip xmlrpc xmlwriter phar

RUN pecl channel-update pecl.php.net \
    && yes | pecl install xdebug \
        && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
        && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
        && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && docker-php-ext-enable xdebug