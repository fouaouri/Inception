FROM debian:11

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y nginx
RUN apt install -y openssl
COPY default /etc/nginx/sites-enabled/default
COPY to_run_ng.sh /to_run_ng.sh
CMD ["sh", "to_run_ng.sh"]