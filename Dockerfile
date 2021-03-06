FROM php:7.2-cli
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
CMD ["php", "-S", "0.0.0.0:80", "-t", "./web", "./web/index.php"]
