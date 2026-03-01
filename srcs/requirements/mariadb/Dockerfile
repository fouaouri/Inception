FROM debian:11
RUN  apt update -y && apt upgrade -y
RUN  apt install mariadb-server -y
COPY tools/to_run_db.sh /to_run_db.sh
CMD ["sh", "/to_run_db.sh"]