sudo mkdir /etc/ssl/private
sudo chmod 700 /etc/ssl/private
sudo openssl req \
    -new \
    -newkey rsa:2048 \
    -days 365 \
    -nodes \
    -x509 \
    -subj "/C=IN/ST=GURGOAN/L=GURGOAN/O=shopclues/CN=www.exale.com" \
    -keyout /etc/ssl/private/apache-selfsigned.key \
    -out /etc/ssl/certs/apache-selfsigned.crt

sudo openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
sudo cat /etc/ssl/certs/dhparam.pem | sudo tee -a /etc/ssl/certs/apache-selfsigned.crt
