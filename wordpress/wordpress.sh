!# /bin/sh
cd /etc/data && \
wget https://wordpress.org/latest.tar.gz && \
tar -xzvf latest.tar.gz && \
rm latest.tar.gz && \
chmod 777 * && \
top
