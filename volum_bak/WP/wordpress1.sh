wget https://wordpress.org/latest.tar.gz > /dev/null && \
tar -xzvf latest.tar.gz > /dev/null && \
rm latest.tar.gz > /dev/null && \
chmod -R 777 * > /dev/null && \
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
chmod +x /etc/data/wp-cli.phar
mv wp-config.php wordpress/ && \
mv wp-cli.phar /usr/local/bin/wp && \
cp /usr/bin/php83 /usr/bin/php

