#Docker file for PHP Lavarel Artisan
FROM samphomsopha/php-cli:latest
MAINTAINER Sam Phomsopha <sam.phomsopha@demandmedia.com>

WORKDIR /tmp

RUN sudo apt-get update -y && apt-get install -y \
    php5-mcrypt \
    php5-mongo \
    php5-mssql \
    php5-mysqlnd \
    php5-pgsql \
    php5-redis \
    php5-sqlite \
    php5-gd

RUN mkdir -p /var/www
VOLUME ["/var"]
WORKDIR /var/www

# Container entry point is PHP, default command is --help
ENTRYPOINT ["php", "artisan"]
CMD ["--help"]