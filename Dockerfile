FROM tutum/lamp

LABEL maintainer="Kevin Barton"

RUN apt update
RUN apt install -y wget curl netcat

# Transfer files to install filethingie 2.5.7.
COPY ./wp-config.test.php /var/www/html/wp-config.test.php

