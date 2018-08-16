FROM php:7.0-apache

RUN apt-get update -y && apt-get install -y libpng-dev curl libcurl4-openssl-dev 

# documentation https://github.com/docker-library/php/issues/75
RUN apt-get install -y git
RUN apt install -y libmcrypt-dev
RUN docker-php-ext-install mcrypt
RUN apt install -y libicu-dev
RUN docker-php-ext-install -j$(nproc) intl
RUN apt install -y mysql-client 
RUN apt install -y curl
RUN docker-php-ext-install session
RUN docker-php-ext-install json
RUN docker-php-ext-install hash
RUN docker-php-ext-install pdo
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install tokenizer
RUN docker-php-ext-install mcrypt
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install curl
RUN docker-php-ext-install pdo pdo_mysql gd curl

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer
RUN docker-php-ext-install intl
RUN docker-php-ext-install gd

RUN a2enmod rewrite
RUN service apache2 restart