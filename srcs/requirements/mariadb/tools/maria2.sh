
eval "mariadb-secure-installation << EOF 

y
secret
secret
y
y
y
y
EOF"

tail -f
