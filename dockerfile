FROM php:8.2-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN a2enmod rewrite

WORKDIR /var/www/html

RUN usermod -u 1000 www-data && \
    chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 80
