FROM debian:11
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get  install -y wget
RUN apt-get install -y php-fpm
RUN  apt install php-mysqli -y
COPY to_run.sh /to_run.sh
RUN chmod +x /to_run.sh
CMD ["sh", "/to_run.sh"]