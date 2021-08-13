FROM tutum/lamp

LABEL maintainer="Kevin Barton"

RUN apt update
RUN apt install -y wget curl netcat unzip zip

# Copy filethingie 2.5.7 from exploit-db
RUN wget https://www.exploit-db.com/apps/71442de71ef46bf3ed53d416ec8bcdbd-filethingie-master.zip
RUN unzip 71442de71ef46bf3ed53d416ec8bcdbd-filethingie-master.zip
RUN rm -r /var/www/html
RUN mv filethingie-master/ /var/www/html/

# Transfer key files to install filethingie 2.5.7.
COPY ./filethingie-master/* /var/www/html/*

