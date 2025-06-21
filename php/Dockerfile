FROM php:8.1-fpm

RUN apt-get update && apt-get install -y \
    unzip \
    curl \
    libpq-dev \
    && pecl install redis \
    && docker-php-ext-enable redis \
    && docker-php-ext-install pdo_pgsql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html

COPY src/composer.json ./composer.json

RUN composer install

COPY src/ ./
