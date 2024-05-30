FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 80

COPY ./oxer-html /var/www/html

CMD ["apache2ctl", "-D", "FOREGROUND"]
