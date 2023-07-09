FROM php:7.1.33-fpm
RUN apt-get update && apt-get install -y \
    libssl-dev \
    git \
    unzip \
    vim \
    expect \
    curl \
    gnupg \
    openssh-server
#RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
#RUN apt-get install -y nodejs
#RUN npm install npm -g

# PDO
RUN docker-php-ext-install pdo_mysql mysqli
# gettext
RUN docker-php-ext-install gettext

#RUN apt-get install -y php-phpseclib
#RUN docker-php-ext-install phpseclib

# php-process (posix)
RUN docker-php-ext-install posix

# recode
RUN apt install -y librecode0
RUN apt install -y librecode-dev
RUN docker-php-ext-install recode

# soap
RUN apt-get install --no-install-recommends -y libxml2-dev
RUN docker-php-ext-install soap

#tidy
RUN apt-get install -y libtidy-dev
RUN docker-php-ext-install tidy \
    && docker-php-ext-enable tidy

# redis
RUN docker-php-source extract
RUN git clone -b 4.1.1 --depth 1 https://github.com/phpredis/phpredis.git /usr/src/php/ext/redis && \
    docker-php-ext-install redis

# xdebug
RUN apt-get install -y apt-utils libicu-dev libpq-dev
RUN pecl -q install xdebug-2.7.0
RUN pecl php-pecl-msgpack
RUN pecl php-pecl-zip

# GD
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

RUN docker-php-ext-install bcmath
RUN apt-get install libgmp-dev -y && docker-php-ext-install gmp
RUN apt-get install libicu-dev -y && docker-php-ext-install intl



# install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
