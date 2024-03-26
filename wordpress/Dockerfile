FROM debian:12
# Install NGINX
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get  install -y wget
RUN apt-get install -y php-fpm
RUN  apt install php-mysqli -y

# RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
COPY to_run.sh /to_run.sh
RUN chmod +x /to_run.sh
CMD ["sh", "/to_run.sh"]