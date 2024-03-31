FROM debian:11

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y nginx
RUN apt install -y openssl
# ARG CERTS_PATH
# ENV CERTS_PATH=$CERTS_
RUN openssl req -x509 -nodes -out $CERTS_ -keyout /etc/nginx/titim.key -subj "/C=MA/ST=Marrakesh-Safi/L=Benguerir/O=1337 coding school/CN=fzouaourikt@gmail.com"
COPY default /etc/nginx/sites-enabled/default
CMD ["nginx", "-g", "daemon off;"]