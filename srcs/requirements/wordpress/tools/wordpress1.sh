cd /etc/data
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm latest.tar.gz
chmod -R 777 *
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x /etc/data/wp-cli.phar
mv wp-config.php wordpress/
mv wp-cli.phar /usr/local/bin/wp
cp /usr/bin/php83 /usr/bin/php
