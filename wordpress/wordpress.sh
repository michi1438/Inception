cd /etc/data && \
wget https://wordpress.org/latest.tar.gz > /dev/null && \
tar -xzvf latest.tar.gz > /dev/null && \
rm latest.tar.gz > /dev/null && \
chmod -R 777 * > /dev/null && \
php-fpm83 -D && \
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
chmod +x /etc/data/wp-cli.phar
mv /wp-config.php /etc/data/wordpress && \
mv /etc/data/wp-cli.phar /usr/local/bin/wp && \
cp /usr/bin/php83 /usr/bin/php && \
top

