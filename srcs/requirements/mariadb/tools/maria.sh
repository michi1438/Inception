mv my.cnf /etc/my.cnf
INSTALL_OPTS="--user=mysql"
INSTALL_OPTS="${INSTALL_OPTS} --cross-bootstrap"
INSTALL_OPTS="${INSTALL_OPTS} --auth-root-authentication-method=normal"
INSTALL_OPTS="${INSTALL_OPTS} --datadir=/var/lib/mysql"
chown -R mysql:mysql /var/lib/mysql
eval mariadb-install-db "${INSTALL_OPTS}"
eval exec 'mariadbd-safe --datadir=/var/lib/mysql --user=root --general_log'
