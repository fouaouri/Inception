SQLDB=$SQL_DATABASE
SQLUSER=$SQL_USER
SQLPASS=$SQL_PASSWORD


service mariadb start
sleep 5


mariadb -e "CREATE DATABASE IF NOT EXISTS \`${SQLDB}\`;"
mariadb -e "CREATE USER IF NOT EXISTS '${SQLUSER}'@'%' IDENTIFIED BY '${SQLPASS}';"
mariadb -e "GRANT ALL PRIVILEGES ON \`${SQLDB}\`.* TO '${SQLUSER}'@'%';"
mariadb -e "FLUSH PRIVILEGES;"

service mariadb stop
sleep 1
mysqld_safe --bind-address=mariadb --port=3306 2>/dev/null