# use an official ubuntu base image
FROM ubuntu:latest

# Install necessary packages
RUN apt-get -y update
RUN apt-get -y install apache2

# Copy the contents of your web folder to the container's /var/www/html directory
COPY ./web/index.html /var/www/html

# Expose port 80 (opens port 80)
EXPOSE 80

# start the apache2 service 
CMD ["apache2ctl", "-D", "FOREGROUND"]
