openssl req -x509 -nodes -out $CERTS_ -keyout $KEY_ -subj "/C=MA/ST=Marrakesh-Safi/L=Benguerir/O=1337 coding school/CN=fzouaourikt@gmail.com"

sed -i "s|CERTS_|$CERTS_|g" /etc/nginx/sites-enabled/default
sed -i "s|KEY_|$KEY_|g" /etc/nginx/sites-enabled/default

nginx -g "daemon off;"