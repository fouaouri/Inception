FROM debian:12
RUN  apt update -y && apt upgrade -y
RUN  apt install mariadb-server -y
COPY to_run_db.sh /to_run_db.sh
RUN chmod +x /to_run_db.sh
CMD ["sh", "/to_run_db.sh"]