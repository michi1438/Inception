echo $FTPUSER:$FTPUSERPW | chpasswd 
chmod 755 /etc/data/wordpress
chmod -R 777 /etc/data/wordpress/wp-content
cd /etc/data/wordpress
vsftpd /vsftpd.conf
