mv my.cnf /etc/my.cnf
INSTALL_OPTS="--user=mysql"
INSTALL_OPTS="${INSTALL_OPTS} --cross-bootstrap"
insTALL_OPTS="${INSTALL_OPTS} --rpm"
INSTALL_OPTS="${INSTALL_OPTS} --auth-root-authentication-method=normal"
INSTALL_OPTS="${INSTALL_OPTS} --skip-test-db"
INSTALL_OPTS="${INSTALL_OPTS} --datadir=/var/lib/mysql"
eval mariadb-install-db "${INSTALL_OPTS}"
chown -R mysql:mysql /var/lib/mysql
eval exec mariadbd --user=mysql --general_log
tail -f
