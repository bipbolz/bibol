FROM php:8.3-cli

WORKDIR /var/www

RUN apt-get update && apt-get install -y \
    libzip-dev zip unzip curl \
    && docker-php-ext-install pdo pdo_mysql zip

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY . .

CMD php artisan serve --host=0.0.0.0 --port=8000
