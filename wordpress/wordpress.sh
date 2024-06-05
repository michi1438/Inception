cd /etc/data && \
wget https://wordpress.org/latest.tar.gz > /dev/null && \
tar -xzvf latest.tar.gz > /dev/null && \
rm latest.tar.gz > /dev/null && \
chmod -R 777 * > /dev/null && \
php-fpm83 -D && \
top > /dev/null

